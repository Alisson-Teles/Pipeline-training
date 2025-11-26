#!/usr/bin/env bash
set -Eeuo pipefail

# Uso: ./compila_otimizacoes_global.sh arquivo.ll [pasta_raiz]
# Variável opcional: GLOBAL_CSV=/caminho/para/dec_otimizacoes_GLOBAL.csv

if [ $# -lt 1 ]; then
  echo "Uso: $0 arquivo.ll [pasta_raiz]" >&2
  exit 1
fi

INPUT="$1"
ROOT_DIR="${2:-/home/calebe/Downloads/geração_de_prompt_label}"

if [ ! -f "$INPUT" ]; then
  echo "Erro: arquivo não encontrado: $INPUT" >&2
  exit 1
fi

# CSV global (pode sobrescrever via VAR de ambiente GLOBAL_CSV)
GLOBAL_CSV="${GLOBAL_CSV:-$ROOT_DIR/dec_otimizacoes_GLOBAL.csv}"

# Pasta de saída por arquivo (mantém seu layout atual)
basename_ll=$(basename "$INPUT")            # ex.: 00001.ll
OUTPUT_DIR="$ROOT_DIR/Resultados_opt_niveis/Resultados $basename_ll"
mkdir -p "$OUTPUT_DIR"

# CSV local (por arquivo)
CSV_LOCAL="$OUTPUT_DIR/dec_otimizacoes.csv"
if [ ! -s "$CSV_LOCAL" ]; then
  echo "otimizacao,dec_bytes,arquivo_o" > "$CSV_LOCAL"
fi

# Função auxiliar para escrita ATÔMICA e SEM REPETIÇÃO no CSV global
append_global_csv() {
  local input_ll="$1"   # nome base do .ll (ex.: 00001.ll)
  local optname="$2"    # O1, O2, Oz, etc (sem o "-")
  local dec="$3"        # número em DEC
  local objpath="$4"    # caminho do .o

  {
    flock -w 60 200 || {
      echo "Erro: não consegui lock em $GLOBAL_CSV" >&2
      exit 1
    }

    # Cabeçalho só se o arquivo ainda não existe ou está vazio
    if [ ! -s "$GLOBAL_CSV" ]; then
      echo "arquivo_ll,otimizacao,dec_bytes,arquivo_o" >&200
    fi

    # Se já existe uma linha com MESMO arquivo_ll e MESMA otimizacao, não grava de novo
    if ! grep -Fq "$input_ll,$optname," "$GLOBAL_CSV"; then
      echo "$input_ll,$optname,$dec,$objpath" >&200
    fi
  } 200>>"$GLOBAL_CSV"
}

OTIMIZACOES=(-O1 -O2 -O3 -Os -Oz)

for optflag in "${OTIMIZACOES[@]}"; do
  nome=$(echo "$optflag" | sed 's/^-//; s/Odisable/Od/')
  echo "Compilando $basename_ll com $optflag..."

  ll_out="$OUTPUT_DIR/${nome}.ll"
  obj_out="$OUTPUT_DIR/${nome}.o"

  # Gera IR otimizado e objeto (alvo avr atmega328p como no seu script original)
  opt-20 "$INPUT" -S "$optflag" -o "$ll_out"
  llc-20 -march=avr -mtriple=avr -mcpu=atmega328p "$ll_out" -filetype=obj -o "$obj_out"
  # Extrai a coluna "dec" de llvm-size
  dec="$(llvm-size-20 "$obj_out" | \
    awk 'NR==1{for(i=1;i<=NF;i++) if(tolower($i)=="dec") col=i} NR==2 && col {print $col}')"

  # Se por algum motivo não vier número, registra 0 para manter formato
  if ! [[ "$dec" =~ ^[0-9]+$ ]]; then
    dec=0
  fi

  # Grava no CSV LOCAL (por arquivo)
  echo "$nome,$dec,$obj_out" >> "$CSV_LOCAL"

  # Grava também no CSV GLOBAL (com lock + de-duplicação)
  append_global_csv "$basename_ll" "$nome" "$dec" "$obj_out"
done

echo
echo "Processamento concluído!"
echo "Resultados (local): $CSV_LOCAL"
echo "Resultados (global): $GLOBAL_CSV"