#!/bin/bash
# Executa cada sequência de passes (uma por linha) sobre um .ll
# ou todos .ll de um diretório, selecionando o menor código gerado.
# Compatível com LLVM 20 (NPM).

INPUT="$1"
SEQ_FILE="${2:-sequencias_unicas.txt}"

OUTPUT_ROOT="Resultados_seqUnica"
TMPDIR="$(mktemp -d)"

CSV="melhores.csv"
echo "arquivo,dec_bytes" > "$CSV"

# ---------------------- validações ----------------------
if [ -z "$INPUT" ]; then
    echo "Uso: $0 <arquivo.ll | pasta_com_ll> [sequencias.txt]"
    exit 1
fi

if [ ! -f "$SEQ_FILE" ]; then
    echo "ERRO: arquivo de sequências não encontrado: $SEQ_FILE"
    exit 1
fi

# ---------------------- função principal ----------------------
process_one_ll() {
    local llpath="$1"
    local BASENAME_LL
    BASENAME_LL="$(basename "$llpath")"

    local OUTPUT_DIR="$OUTPUT_ROOT/Resultado_$BASENAME_LL"
    mkdir -p "$OUTPUT_DIR"

    echo "==> Processando $BASENAME_LL"
    
    local MELHOR_SIZE=""
    local MELHOR_SEQ=""
    local seq_index=1

    while IFS= read -r line; do
        # pular linha vazia ou comentada
        [[ -z "$line" || "$line" =~ ^[[:space:]]*# ]] && continue

        # converter "-mem2reg -instcombine" -> "mem2reg,instcombine"
        local passes
        passes=$(echo "$line" \
            | sed -E 's/^[[:space:]]*-[[:space:]]*//; s/[[:space:]]+-[[:space:]]*/,/g; s/[[:space:]]+//g')

        # gera IR otimizado
        opt-20 "$llpath" -S -o "$TMPDIR/saida.ll" -passes="$passes" 2>/dev/null
        if [ $? -ne 0 ]; then
            echo "ERR [$(printf "%03d" "$seq_index")] opt falhou: $passes"
            seq_index=$((seq_index+1))
            continue
        fi

        # gera objeto
        llc-20 -march=avr -mtriple=avr -mcpu=atmega328p \
            "$TMPDIR/saida.ll" -filetype=obj -o "$TMPDIR/saida.o" 2>/dev/null

        if [ $? -ne 0 ]; then
            echo "ERR [$(printf "%03d" "$seq_index")] llc falhou: $passes"
            seq_index=$((seq_index+1))
            continue
        fi

        # gera assembly
        llvm-objdump-20 --no-addresses --no-show-raw-insn --demangle \
            -D --triple=avr --mcpu=atmega328p \
            "$TMPDIR/saida.o" > "$TMPDIR/saida.s"

        # mede tamanho do .o
        local CUR_SIZE
        CUR_SIZE=$(llvm-size-20 "$TMPDIR/saida.o" | tail -n1 | awk '{print $4}')

        if [[ -z "$MELHOR_SIZE" || "$CUR_SIZE" -lt "$MELHOR_SIZE" ]]; then
            MELHOR_SIZE="$CUR_SIZE"
            MELHOR_SEQ="$passes"

            # salva melhores arquivos
            cp "$TMPDIR/saida.ll" "$OUTPUT_DIR/melhor.ll"
            cp "$TMPDIR/saida.o" "$OUTPUT_DIR/melhor.o"
            cp "$TMPDIR/saida.s" "$OUTPUT_DIR/melhor.s"
            echo "$passes" > "$OUTPUT_DIR/melhor.txt"
        fi

        echo "OK  [$(printf "%03d" "$seq_index")] $passes -> $CUR_SIZE bytes"
        seq_index=$((seq_index+1))

    done < "$SEQ_FILE"

    # registrar no CSV
    echo "\"$llpath\",$MELHOR_SIZE" >> "$CSV"
    echo "--> Melhor para $BASENAME_LL: $MELHOR_SIZE bytes"
}

# ---------------------- processamento ----------------------
if [ -d "$INPUT" ]; then
    found_any=false
    while IFS= read -r -d '' llfile; do
        found_any=true
        process_one_ll "$llfile"
    done < <(find "$INPUT" -maxdepth 1 -type f -name '*.ll' -print0 | sort -z)

    if [ "$found_any" = false ]; then
        echo "Nenhum .ll encontrado em $INPUT"
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

echo "Finalizado. Resultados em $OUTPUT_ROOT"
