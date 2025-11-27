#!/bin/bash
# Executa sequências de passes (uma por linha) sobre 1 arquivo .ll ou uma pasta com .ll
# Uso:
#   ./rodar_passes.sh caminho/arquivo.ll [sequencias.txt]
#   ./rodar_passes.sh caminho/para/pasta_com_ll [sequencias.txt]

INPUT="$1"
SEQ_FILE="${2:-sequencias_unicas.txt}"   # opcional: caminho do txt de sequências
OUTPUT_ROOT="Resultados_seqUnica"
TMPDIR=`mktemp -d`

CSV="melhores.csv"
echo "arquivo,dec_bytes" > "$CSV"

if [ -z "$INPUT" ]; then
  echo "Uso: $0 <arquivo.ll | pasta_com_ll> [sequencias.txt]"
  exit 1
fi

if [ ! -f "$SEQ_FILE" ]; then
  echo "ERRO: arquivo de sequências não encontrado: $SEQ_FILE"
  exit 1
fi

# Função que processa um único .ll
process_one_ll() {
  local llpath="$1"
  local BASENAME_LL
  BASENAME_LL="$(basename "$llpath")"

  local OUTPUT_DIR="$OUTPUT_ROOT/Resultado$BASENAME_LL"
  mkdir -p "$OUTPUT_DIR"

  echo "==> Processando $BASENAME_LL"
  local i=1

  # remove antigo melhor, se existir
  rm -f $OUTPUT_DIR/melhor.o

  # Lê cada linha (sequência) do arquivo de sequências
  while IFS= read -r passes; do
    # pula linhas vazias ou comentadas
    [[ -z "$passes" || "$passes" =~ ^[[:space:]]*# ]] && continue

    # Gera LLVM IR otimizado
    opt-20 "$llpath" -S -o "$TMPDIR/saida.ll" -passes="module($passes)" #2>>/dev/null
    OK=$?

    # Gera objeto
    if [ $OK -eq 0 ]; then
      llc-20 -mtriple=thumbv7m-none-eabi -mcpu=cortex-m3 "$TMPDIR/saida.ll" -filetype=obj -o "$TMPDIR/saida.o"
    fi
    
    #Gera assembly
    if [ $OK -eq 0 ]; then
      llvm-objdump-20 --section=.text --no-addresses --no-show-raw-insn --demangle -D --triple=thumbv7m-none-eabi --mcpu=cortex-m3 "$TMPDIR/saida.o" > "$TMPDIR/saida.s"

      if [ -f "$OUTPUT_DIR/melhor.o" ]; then
        SAIDA_SIZE=$(llvm-size-20 "$TMPDIR/saida.o" |tail -n1|cut -f4)
        MELHOR_SIZE=$(llvm-size-20 "$OUTPUT_DIR/melhor.o" |tail -n1|cut -f4)
        if [ "$SAIDA_SIZE" -lt "$MELHOR_SIZE" ]; then
          cp "$TMPDIR/saida.ll" "$OUTPUT_DIR/melhor.ll"
          cp "$TMPDIR/saida.o" "$OUTPUT_DIR/melhor.o"
          cp "$TMPDIR/saida.s" "$OUTPUT_DIR/melhor.s"
          echo "$passes" > "$OUTPUT_DIR/melhor.txt"
          echo -e "\033[38;5;46mMelhor: ${MELHOR_SIZE} Atual: ${SAIDA_SIZE}\033[0m"
        fi
      else
        cp "$TMPDIR/saida.ll" "$OUTPUT_DIR/melhor.ll"
        cp "$TMPDIR/saida.o" "$OUTPUT_DIR/melhor.o"
        cp "$TMPDIR/saida.s" "$OUTPUT_DIR/melhor.s"
        SAIDA_SIZE=$(llvm-size-20 "$TMPDIR/saida.o" |tail -n1|cut -f4)
        echo "$passes" > "$OUTPUT_DIR/melhor.txt"
        echo -e "\033[38;5;46mMelhor: ${SAIDA_SIZE}\033[0m"
      fi
    fi

    if [ $OK -eq 0 ]; then
      echo "OK  [$(printf "%03d" "$i")] $SAIDA_SIZE $passes"
    else
      echo -e "\033[31mERR\033[0m [$(printf "%03d" "$i")] $SAIDA_SIZE $passes"
    fi

    i=$((i+1))
  done < "$SEQ_FILE"

  # --- registra o tamanho do melhor no csv ---
  dec_bytes=$(llvm-size-20 "$OUTPUT_DIR/melhor.o" |tail -n1|cut -f4)
  echo "\"$llpath\",$dec_bytes" >> "$CSV"
  echo "\"$llpath\",$dec_bytes"
}

# Decide se INPUT é arquivo .ll ou diretório
if [ -d "$INPUT" ]; then
  # Varre apenas os .ll do diretório (nível atual)
  found_any=false
  while IFS= read -r -d '' llfile; do
    found_any=true
    process_one_ll "$llfile"
  done < <(find "$INPUT" -maxdepth 1 -type f -name '*.ll' -print0 | sort -z)

  if [ "$found_any" = false ]; then
    echo "Nenhum .ll encontrado em: $INPUT"
    exit 1
  fi
elif [ -f "$INPUT" ]; then
  case "$INPUT" in
    *.ll) process_one_ll "$INPUT" ;;
    *) echo "ERRO: arquivo não é .ll: $INPUT"; exit 1 ;;
  esac
else
  echo "ERRO: caminho não encontrado: $INPUT"
  exit 1
fi

