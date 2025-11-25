#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import argparse
import csv
import os
import subprocess
import sys
from pathlib import Path

def llvm_dec(obj: Path) -> int | None:
    try:
        out = subprocess.check_output(["llvm-size-20", str(obj)],
                                      text=True, stderr=subprocess.DEVNULL)
    except FileNotFoundError:
        print("ERRO: 'llvm-size-20' não está no PATH.", file=sys.stderr)
        sys.exit(1)
    except subprocess.CalledProcessError:
        return None
    lines = [ln for ln in out.strip().splitlines() if ln.strip()]
    if not lines:
        return None
    parts = lines[-1].split()
    if len(parts) < 4:
        return None
    dec_str = parts[3]
    return int(dec_str) if dec_str.isdigit() else None

def main():
    ap = argparse.ArgumentParser(
        description="Coleta dec (bytes) de cada subdiretório que contém melhor.o e salva ../melhores.csv"
    )
    ap.add_argument("root", help="Diretório raiz (ex.: /home/alisson_eles/tudo/Resultados_seqUnica)")
    args = ap.parse_args()

    root = Path(args.root).resolve()
    if not root.is_dir():
        print(f"ERRO: diretório inválido: {root}", file=sys.stderr)
        sys.exit(1)

    rows: list[tuple[str, int]] = []

    for dirpath, _, _ in os.walk(root):
        d = Path(dirpath)
        obj = d / "melhor.o"
        if not obj.exists():
            continue

        dec = llvm_dec(obj)
        if dec is None:
            continue

        # Preferir melhor.ll como rótulo "arquivo"
        ll = d / "melhor.ll"
        label = str(ll if ll.exists() else d)
        rows.append((label, dec))

    # ordena por caminho só para estabilidade
    rows.sort(key=lambda x: x[0])

    out_csv = root.parent / "melhores.csv"
    with out_csv.open("w", newline="", encoding="utf-8") as f:
        w = csv.writer(f)
        w.writerow(["arquivo", "dec_bytes"])
        for label, dec in rows:
            w.writerow([label, dec])

    print(f"OK! Gerado: {out_csv}  (total: {len(rows)} linhas)")

if __name__ == "__main__":
    main()
