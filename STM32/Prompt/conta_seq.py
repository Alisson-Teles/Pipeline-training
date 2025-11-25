#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
count_passes_freq.py
--------------------
Conta quantas vezes cada sequência de passes aparece em um JSONL no formato:
{"messages": [{"content": "...","role":"user"},{"content": "Run the following passes <PASSES> to reduce de instruction count\n[code]\n...\n[/code]","role":"assistant"}]}

Uso:
  python3 count_passes_freq.py --in dataset_chat.jsonl [--out_csv passes_freq.csv]

Saída (stdout):
  - top frequências (ordenadas por contagem desc. e depois pela string de passes)
  - totais agregados

Opcional:
  --out_csv: salva um CSV com colunas: passes,count
"""

import argparse, json, re, sys
from collections import Counter
from pathlib import Path

# padrões de extração (tenta os mais recentes primeiro)
RE_NEW = re.compile(
    r"Run\s+the\s+following\s+passes\s+(?P<passes>.+?)\s+to\s+reduce\s+de\s+instruction\s+count",
    re.IGNORECASE | re.DOTALL,
)

# versões antigas / alternativas (ex.: "Run passes: <PASSES>")
RE_OLD = re.compile(
    r"Run\s+passes[:\s]+(?P<passes>.+?)(?:\n|\r|$|\[code\])",
    re.IGNORECASE | re.DOTALL,
)

def normalize_passes(s: str) -> str:
    """Normaliza levemente a string de passes para evitar variações triviais."""
    s = s.strip()
    # colapsa espaços múltiplos e vírgulas/esp. redundantes
    s = re.sub(r"[ \t]+", " ", s)
    s = re.sub(r"\s*,\s*", ",", s)
    # remove espaços antes/depois de hífen inicial comum em flags (-mem2reg)
    s = re.sub(r"\s*-\s*", "-", s)
    return s

def extract_passes_from_messages(msgs) -> str | None:
    """Tenta extrair a sequência de passes a partir das mensagens (assistant)."""
    if not isinstance(msgs, list):
        return None

    # 1) se houver campo 'passes' fora das mensagens (metadado), respeitar
    # (vai ser recuperado fora deste método; aqui focamos apenas em messages)

    # 2) procurar a primeira mensagem do assistant
    assistant = None
    for m in msgs:
        # garantimos 'content' antes de 'role' no seu dataset, mas ainda assim checamos ambos
        role = (m.get("role") or "").lower()
        if role == "assistant":
            assistant = m
            break
    if not assistant:
        return None

    content = assistant.get("content") or ""
    if not content:
        return None

    m = RE_NEW.search(content)
    if m:
        return normalize_passes(m.group("passes"))

    m = RE_OLD.search(content)
    if m:
        return normalize_passes(m.group("passes"))

    return None

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--in", dest="in_path", required=True, help="Caminho do JSONL de entrada")
    ap.add_argument("--out_csv", default=None, help="(opcional) Salva CSV com colunas: passes,count")
    ap.add_argument("--top", type=int, default=50, help="Mostrar os N mais frequentes (padrão: 50)")
    args = ap.parse_args()

    in_path = Path(args.in_path)
    if not in_path.exists():
        print("ERRO: arquivo não encontrado:", in_path, file=sys.stderr)
        sys.exit(1)

    freq = Counter()
    total_lines = 0
    extracted = 0
    failures = 0

    with in_path.open("r", encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            total_lines += 1
            try:
                obj = json.loads(line)
            except Exception:
                failures += 1
                continue

            # 1) preferir metadado 'passes' no topo (se existir)
            passes_str = obj.get("passes")
            if isinstance(passes_str, str) and passes_str.strip():
                ps = normalize_passes(passes_str)
            else:
                # 2) extrair do assistant.content
                msgs = obj.get("messages")
                ps = extract_passes_from_messages(msgs)

            if ps:
                freq[ps] += 1
                extracted += 1

    # relatório
    print(f"\nArquivo: {in_path}")
    print(f"Linhas totais: {total_lines}")
    print(f"Com passes extraídos: {extracted}")
    print(f"Falhas de parse JSON: {failures}")
    print(f"Sequências únicas de passes: {len(freq)}\n")

    # top-N
    print(f"Top {min(args.top, len(freq))} sequências por frequência:\n")
    for i, (passes, count) in enumerate(freq.most_common(args.top), start=1):
        print(f"{i:>3}. count={count:>5}  passes={passes}")

    # CSV opcional
    if args.out_csv:
        outp = Path(args.out_csv)
        with outp.open("w", encoding="utf-8") as g:
            g.write("passes,count\n")
            # ordena determinístico: por contagem desc, depois alfabético
            for passes, count in sorted(freq.items(), key=lambda kv: (-kv[1], kv[0])):
                # escapa aspas
                esc = passes.replace('"', '""')
                g.write(f"\"{esc}\",{count}\n")
        print(f"\nCSV salvo em: {outp.resolve()}")

if __name__ == "__main__":
    main()
