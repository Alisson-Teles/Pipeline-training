#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import argparse
import csv
import json
import os
import re
import subprocess
import sys
from pathlib import Path
from typing import Optional, List

# -------------------- Prompt/Label builders --------------------
def make_user_content_unopt_ir(ir_un: str, arch: str) -> str:
    # arch curto: "stm32" ou "avr"
    return (
        f"Tell me what passes to run on the following LLVM-IR to reduce the object file size for {arch} assembly\n"
        "[code]\n"
        f"{ir_un}\n"
        "[/code]"
    )

def make_assistant_content_asm(asm_text: str, passes: Optional[str], dec: int) -> str:
    header = f"Run the following passes {passes} to reduce the object file size to {dec}\n" if passes else ""
    return f"{header}[code]\n{asm_text}\n[/code]"

# -------------------- Utils --------------------
def read_text(path: Path) -> str:
    for enc in ("utf-8", "latin-1"):
        try:
            return path.read_text(encoding=enc)
        except Exception:
            continue
    return path.read_bytes().decode("utf-8", errors="ignore")

def ensure_parent(path: Path):
    path.parent.mkdir(parents=True, exist_ok=True)

def extract_num_ll_from_csv_path(rel_path: str) -> Optional[str]:
    """
    CSV 'arquivo' exemplos:
      - Resultado 00001.ll/melhor.ll
      - Resultado00001.ll/melhor.ll
    Retorna '00001.ll'
    """
    m = re.search(r"Resultado\s*0*?(\d{1,5})\.ll", rel_path)
    if m:
        return f"{int(m.group(1)):05d}.ll"
    # fallback: qualquer 1..5 dígitos antes de '.ll'
    m2 = re.search(r"(\d{1,5})\.ll", rel_path)
    if m2:
        return f"{int(m2.group(1)):05d}.ll"
    return None

def find_result_dir(resultados_root: Path, num_ll: str) -> Optional[Path]:
    """
    Tenta achar a subpasta do resultado para '00001.ll':
      - Resultado00001.ll
      - Resultado 00001.ll
    e variações com espaços extras.
    """
    candidates = [
        resultados_root / f"Resultado{num_ll}",
        resultados_root / f"Resultado {num_ll}",
        resultados_root / f"Resultado  {num_ll}",
    ]
    for c in candidates:
        if c.exists():
            return c

    # busca ampla
    for p in resultados_root.glob(f"Resultado*"):
        if p.is_dir() and p.name.endswith(num_ll):
            return p

    for p in resultados_root.rglob(f"Resultado*{num_ll}"):
        if p.is_dir():
            return p

    return None

def read_passes_from_txt(res_dir: Path) -> Optional[str]:
    txt = res_dir / "melhor.txt"
    if not txt.exists():
        return None
    content = read_text(txt).strip()
    content = re.sub(r"\s+", " ", content)
    return content if content else None

def get_melhor_s(res_dir: Path) -> Optional[Path]:
    s = res_dir / "melhor.s"
    return s if s.exists() else None

def objdump_to_s_text(o_path: Path, triple: str, mcpu: str, objdump_bin: str) -> str:
    cmd = [
        objdump_bin,
        "--no-addresses",
        "--no-show-raw-insn",
        "--demangle",
        "-D",
        f"--triple={triple}",
        f"--mcpu={mcpu}",
        str(o_path),
    ]
    out = subprocess.check_output(cmd, stderr=subprocess.STDOUT)
    return out.decode("utf-8", errors="ignore")

def get_asm_text(res_dir: Path, triple: str, mcpu: str, objdump_bin: Optional[str]) -> Optional[str]:
    """
    Regra: pegar 'melhor.s'.
    Fallback (opcional): se não existir, tenta disassemblar 'melhor.o' com llvm-objdump
    para não perder o par.
    """
    s_path = get_melhor_s(res_dir)
    if s_path:
        return read_text(s_path)

    if objdump_bin:
        o_path = res_dir / "melhor.o"
        if o_path.exists():
            try:
                return objdump_to_s_text(o_path, triple=triple, mcpu=mcpu, objdump_bin=objdump_bin)
            except subprocess.CalledProcessError as e:
                sys.stderr.write(f"[WARN] objdump falhou em {o_path}: {e}\n")

    return None

# -------------------- Principal --------------------
def main():
    parser = argparse.ArgumentParser(description="Gera JSONL (prompt/label) + contagem de tokens (user/assistant/total).")
    parser.add_argument("--dataset_dir", type=Path, required=True, help="pasta raiz do dataset (contém 'arquivos-compilados-...','Resultados_seqUnica','melhores.csv')")
    parser.add_argument("--melhores_csv", type=Path, default=None, help="(opcional) caminho para melhores.csv; padrão: <dataset_dir>/melhores.csv")

    parser.add_argument("--ir_dirname", type=str, default="arquivos-compilados-stm32-1000", help="dir com os .ll não otimizados")
    parser.add_argument("--resultados_dirname", type=str, default="Resultados_seqUnica", help="dir com as subpastas Resultado*.ll")

    parser.add_argument("--arch", type=str, default="stm32", help='texto curto para o prompt: "stm32" ou "avr"')
    parser.add_argument("--hf_tokenizer", type=str, default="facebook/llm-compiler-7b", help="tokenizer a usar")

    # >>> NOVO: token do HF opcional (CLI ou variável de ambiente)
    parser.add_argument("--hf_token", type=str, default=None, help="token HF para repositório privado/gated (ou defina HUGGING_FACE_HUB_TOKEN no ambiente)")

    parser.add_argument("--out_jsonl", type=Path, default=None, help="saida JSONL; padrão: <dataset_dir>/prompt_label/pairs.jsonl")
    parser.add_argument("--out_token_stats", type=Path, default=None, help="saida TXT com tokens; padrão: <dataset_dir>/prompt_label/prompt_label_token_counts.txt")

    # fallback opcional para não perder pares se faltar melhor.s
    parser.add_argument("--objdump_bin", type=str, default="", help="ex.: llvm-objdump-20; deixe vazio para desativar fallback")
    parser.add_argument("--triple", type=str, default="thumbv7m-none-eabi", help="triple para objdump (STM32). Para AVR use 'avr'")
    parser.add_argument("--mcpu", type=str, default="cortex-m3", help="mcpu para objdump. Para AVR use 'atmega328p'")

    parser.add_argument("--limit", type=int, default=None, help="limita N linhas (debug)")

    args = parser.parse_args()

    dataset_dir: Path = args.dataset_dir.expanduser().resolve()
    melhores_csv = (args.melhores_csv.expanduser().resolve()
                    if args.melhores_csv is not None
                    else (dataset_dir / "melhores.csv"))
    ir_dir = dataset_dir / args.ir_dirname
    resultados_dir = dataset_dir / args.resultados_dirname

    out_jsonl = args.out_jsonl or (dataset_dir / "prompt_label" / "pairs.jsonl")
    out_token_stats = args.out_token_stats or (dataset_dir / "prompt_label" / "prompt_label_token_counts.txt")

    print(f"[INFO] Raiz do dataset: {dataset_dir}")
    print(f"[INFO] melhores.csv:   {melhores_csv}")
    print(f"[INFO] IRs:            {ir_dir}")
    print(f"[INFO] Resultados:     {resultados_dir}")
    print(f"[INFO] Saída JSONL:    {out_jsonl}")
    print(f"[INFO] Tokens txt:     {out_token_stats}")
    print(f"[INFO] Tokenizer HF:   {args.hf_tokenizer}")
    print(f"[INFO] Arch curto:     {args.arch}")

    if not melhores_csv.exists():
        sys.stderr.write(f"[ERRO] melhores.csv não encontrado: {melhores_csv}\n")
        sys.exit(1)

    ensure_parent(out_jsonl)
    ensure_parent(out_token_stats)

    try:
        from transformers import AutoTokenizer
    except Exception:
        sys.stderr.write("Instale: pip install transformers sentencepiece\n")
        sys.exit(1)

    # --- autenticação opcional do HF ---
    hf_token = args.hf_token or os.environ.get("HUGGING_FACE_HUB_TOKEN", None)
    if hf_token:
        print("[INFO] Usando token do Hugging Face (fornecido via --hf_token ou HUGGING_FACE_HUB_TOKEN).")
    try:
        # transformers >= 4.38: use 'token' (antes era 'use_auth_token')
        tokenizer = AutoTokenizer.from_pretrained(args.hf_tokenizer, use_fast=True, token=hf_token)
    except TypeError:
        # compat com versões antigas
        tokenizer = AutoTokenizer.from_pretrained(args.hf_tokenizer, use_fast=True, use_auth_token=hf_token)
    except Exception as e:
        sys.stderr.write(f"[ERRO] Falha ao carregar tokenizer '{args.hf_tokenizer}': {e}\n")
        sys.stderr.write("Dica: se o repositório for privado/gated, passe --hf_token XXX ou exporte HUGGING_FACE_HUB_TOKEN.\n")
        sys.exit(1)

    total_ok = 0
    total_skip = 0
    token_lines: List[str] = []
    grand_u = grand_a = 0

    with open(melhores_csv, "r", encoding="utf-8") as fcsv, open(out_jsonl, "w", encoding="utf-8") as fj:
        reader = csv.DictReader(fcsv)
        rows = list(reader)
        if args.limit:
            rows = rows[:args.limit]

        for idx, row in enumerate(rows, start=1):
            rel_path = row.get("arquivo", "").strip()
            dec_str = row.get("dec_bytes", "").strip()

            if not rel_path or not dec_str or not dec_str.isdigit():
                sys.stderr.write(f"[WARN] Linha {idx}: dados inválidos: arquivo='{rel_path}' dec='{dec_str}'. Pulando.\n")
                total_skip += 1
                continue

            dec_val = int(dec_str)

            # >>> NOVO: ignorar dec == 0
            if dec_val == 0:
                sys.stderr.write(f"[WARN] Linha {idx}: dec==0, ignorando par '{rel_path}'.\n")
                total_skip += 1
                continue

            num_ll = extract_num_ll_from_csv_path(rel_path)
            if not num_ll:
                sys.stderr.write(f"[WARN] Linha {idx}: não consegui extrair '00001.ll' de '{rel_path}'. Pulando.\n")
                total_skip += 1
                continue

            ir_path = ir_dir / num_ll
            if not ir_path.exists():
                sys.stderr.write(f"[WARN] Linha {idx}: IR não encontrado: {ir_path}. Pulando.\n")
                total_skip += 1
                continue

            res_dir = find_result_dir(resultados_dir, num_ll)
            if not res_dir:
                sys.stderr.write(f"[WARN] Linha {idx}: pasta de resultado não encontrada p/ {num_ll}.\n")
                total_skip += 1
                continue

            asm_text = get_asm_text(
                res_dir,
                triple=args.triple,
                mcpu=args.mcpu,
                objdump_bin=(args.objdump_bin if args.objdump_bin else None)
            )
            if not asm_text:
                sys.stderr.write(f"[WARN] Linha {idx}: assembly indisponível em {res_dir}. Pulando.\n")
                total_skip += 1
                continue

            passes = read_passes_from_txt(res_dir)

            ir_text = read_text(ir_path)
            user_content = make_user_content_unopt_ir(ir_text, args.arch)
            assistant_content = make_assistant_content_asm(asm_text, passes=passes, dec=dec_val)

            record = {
                "messages": [
                    {"content": user_content, "role": "user"},
                    {"content": assistant_content, "role": "assistant"},
                ]
            }
            fj.write(json.dumps(record, ensure_ascii=False) + "\n")

            # token counts
            n_u = len(tokenizer(user_content).input_ids)
            n_a = len(tokenizer(assistant_content).input_ids)
            n_t = n_u + n_a
            grand_u += n_u
            grand_a += n_a

            print(f"[TOKENS] {num_ll}: user={n_u} assistant={n_a} total={n_t}")
            token_lines.append(f"{num_ll}\t{n_u}\t{n_a}\t{n_t}")
            total_ok += 1

    with open(out_token_stats, "w", encoding="utf-8") as ftok:
        ftok.write("# arquivo_ll\tuser_tokens\tassistant_tokens\ttotal_tokens\n")
        ftok.write("\n".join(token_lines) + "\n")
        ftok.write(f"# SUM\t{grand_u}\t{grand_a}\t{grand_u+grand_a}\n")

    print(f"[OK] Gerados {total_ok} pares. Ignorados {total_skip}.")
    print(f"[OK] JSONL: {out_jsonl}")
    print(f"[OK] Tokens: {out_token_stats}")
    if total_skip > 0:
        print("[DICA] Para evitar pular quando faltar 'melhor.s', use --objdump_bin llvm-objdump-20 e ajuste --triple/--mcpu.")

if __name__ == "__main__":
    main()
