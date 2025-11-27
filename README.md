# Pipeline de criação de pares *prompt–label* para STM32

> Pipeline para gerar dados de treinamento (pares *prompt–label*) a partir de códigos LLVM IR voltados ao STM32F103C8T6, usando o LLVM e sequências de otimização do artigo de Faustino et al. (SBLP’21).

---

## 📌 Objetivo

Este diretório contém os scripts usados para:

1. Compilar e medir o tamanho do código gerado pelo LLVM para STM32 sob diferentes *flags* padrão (`-O1`, `-O2`, `-O3`, `-Os`, `-Oz`);
2. Aplicar sequências de otimização personalizadas (Faustino et al.) em códigos LLVM IR;
3. Selecionar, por programa, a **melhor** sequência em termos de redução de tamanho do código;
4. Gerar um arquivo `.jsonl` com pares *prompt–label* no formato de *chat*, pronto para *fine-tuning* de LLMs.

---

## 🧭 Visão geral do pipeline

Fluxo lógico do pipeline:

1. **Conjunto de IRs para STM32**
   - Pastas com arquivos `.ll` não otimizados (ex.: `angha-ll-stm32f1`, `arquivos_ll/`).

2. **Medição das *flags* padrão do LLVM**
   - `MedePadrao.sh` + `parallelrun_ForMedePadrao.py`  
   - Gera o CSV global `dec_otimizacoes_GLOBAL.csv` com o `dec_bytes` de cada arquivo para `-O1`, `-O2`, `-O3`, `-Os`, `-Oz`.

3. **Aplicação das sequências de Faustino**
   - `sequencias_unicas.txt` + `rodar_seq_uniq.sh` + `parallelrun_forRodar_seq.py`  
   - Para cada `.ll`, testa as sequências e guarda os resultados em `Resultados_seqUnica/`.

4. **Consolidação dos melhores resultados**
   - `coleta_melhores.py`  
   - Produz `melhores.csv` com o melhor `dec_bytes` (menor tamanho) por programa.

5. **Geração dos pares prompt–label**
   - Script `promptLavel.py` (ou equivalente, na pasta de prompt/label)  
   - Lê `melhores.csv`, os `.ll` originais e os resultados para gerar:
     - `saida.jsonl` – pares *prompt–label*;
     - `tokens.txt` – número de tokens por par.

---

## 📁 Estrutura de pastas sugerida

```text
STM32/
├─ angha-ll-stm32f1/           # (opcional) dataset original de IRs STM32
│   ├─ prog1.ll
│   ├─ prog2.ll
│   └─ ...
├─ arquivos_ll/                # .ll que serão otimizados (entrada principal)
│   ├─ prog1.ll
│   ├─ prog2.ll
│   └─ ...
├─ sequencias_unicas.txt       # sequências de passes (Faustino)
├─ MedePadrao.sh               #Ao executar, aplica as flags padrões de otimização em 
│                                uma pasta ou arquivo.ll
├─ parallelrun_ForMedePadrao.py    #executa o medepadrao.sh de forma paralela
├─ rodar_seq_uniq.sh           #Ao executar, aplica as flags de otimização  do Faustino em 
│                                uma pasta ou arquivo.ll
├─ parallelrun_forRodar_seq.py     #executa o rodar_seq_uniq.sh de forma paralela
├─ coleta_melhores.py          #coleta os melhores decs de todos os resultados de
│                                    rodar_seq_uniq.sh de forma paralela
├─ Resultados_seqUnica/        # (gerado) resultados por programa
│   ├─ prog1/
│   ├─ prog2/
│   └─ ...
├─ dec_otimizacoes_GLOBAL.csv  # (gerado, opcional) flags padrão
├─ melhores.csv                # (gerado) melhor resultado por programa
└─ prompt_label/
    └─ promptLavel.py          # gera o JSONL/tokens (local pode variar)
