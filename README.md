# Pipeline de criação de pares *prompt–label* para STM32

> Pipeline para gerar dados de treinamento (pares *prompt–label*) a partir de códigos LLVM IR voltados ao STM32F103C8T6, usando o LLVM e sequências de otimização do artigo de Faustino et al. (SBLP’21).

---

##  Objetivo

Este diretório contém os scripts usados para:

1. Compilar e medir o tamanho do código gerado pelo LLVM para STM32 sob diferentes *flags* padrão (`-O1`, `-O2`, `-O3`, `-Os`, `-Oz`);
2. Aplicar sequências de otimização personalizadas (Faustino et al.) em códigos LLVM IR;
3. Selecionar, por programa, a **melhor** sequência em termos de redução de tamanho do código;
4. Gerar um arquivo `.jsonl` com pares *prompt–label* no formato de *chat*, pronto para *fine-tuning* de LLMs.

---

##  Visão geral do pipeline

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

##  Estrutura de pastas sugerida

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

-Se alterar os nomes das pastas, lembre-se de ajustar também as variáveis e caminhos dentro dos scripts .sh e .py.
##  Pré-requisitos

- **Sistema**: Linux (testado em distros tipo Debian/Ubuntu).
- **LLVM 20** instalado no `PATH`, com binários:
  - `clang-20`
  - `opt-20`
  - `llc-20`
  - `llvm-size-20`
- **Python 3.10+**
- **Dependências típicas para a geração de pares:**

  ```bash
  pip install transformers huggingface_hub tqdm
  ```

  Ajuste conforme os `import` presentes no seu `promptLavel.py`.

> Os scripts assumem sufixo `-20` nos binários (ex.: `opt-20`).  
> Se estiver usando outra versão (ex.: `opt-18` ou `opt`), edite os scripts e troque os nomes.

> Se alterar os nomes das pastas, lembre-se de ajustar também as variáveis e caminhos dentro dos scripts `.sh` e `.py`.
---
## 0️⃣ Criar um novo `dataset.rob` com o **c2rob**
Aqui estamos levando em consideração que você já possui o compilador `robcmp`.
>Repositório: https://github.com/thborges/robcmp.git


Antes de usar o pipeline de otimização, você pode querer gerar um **novo conjunto de programas em ROBL** a partir de códigos C.  
Para isso, usamos o conversor **c2rob**:

> Repositório: https://github.com/thborges/c2rob

O `c2rob` lê um arquivo em C e escreve, na saída padrão, o programa equivalente na linguagem **ROBL**, que é a linguagem de entrada do `robcmp`.

---

### 0.1. Clonar e compilar o `c2rob`

No seu ambiente Linux (com `gcc`, `flex` e `bison` instalados):

```bash
git clone https://github.com/thborges/c2rob.git
cd c2rob
make
cd test
make
```

Se tudo der certo, o comando `make` irá gerar um executável chamado **`c2rob`** no diretório raiz do repositório.

> Se tiver problemas de compilação, verifique se os pacotes `flex` e `bison` estão instalados
> (por exemplo, `sudo apt install flex bison build-essential` em distros Debian/Ubuntu).

---

### 0.2. Converter um arquivo C para ROBL

A sintaxe básica do conversor é (mensagem do próprio binário):
```bash
cd test
mkdir  cfiles
```
`./csmithrun.sh  número_de_códigos_que_deseja_gerar` (O csmithrun.sh irá gerar quantos códigos você deseja)

Após executar estes comandos, os códigos do `Csmith` estarão presentes dentro da pasta `Cfiles`.
Para traduzir os `arquivos.c` para `arquivos.rob` basta executar os comandos abaixo:

`PATH=$PATH:caminho/do/executável/do/robcmp` (sem o executável)
`make -k` 

Saída esperada:
`arquivo.rob`
`arquivo.ll`

Para realizar o mesmo procedimentos para códigos do AnghaBench, basta pegar uma parcela significativas de códigos do repositório e colocar em `Cfiles`, após isso, basta realizar os mesmos procedimentos. (Pode ser que quando você está lendo isso, o `c2rob` ainda não forneça suporte de tradução de códigos do AnghaBench, portanto, podendo-se utilizar apenas os códigos gerados do Csmith, ou baixar compilar os códigos do AnghaBench diretamente com o `robcmp` para gerar os `meus_programas.ll`. Para gerar `programas.ll` usando o `robmp`, basta compilar o código sem `nenhuma flag de otimização`).


Ou seja, para converter um arquivo C:

- **Entrada**: `meu_programa.c` (código em C compatível com o front-end do `c2rob`);
- **Saída**: `meu_programa.rob` & `meu_programa.ll` (código em ROBL gerado na saída padrão e redirecionado para arquivo).


## 1️ Preparar os arquivos LLVM IR (`arquivos_ll/`)

1. **Extraia ou copie os `.ll` para dentro do diretório `STM32/`.**
2. **Crie a pasta de trabalho:**

   ```bash
   mkdir -p arquivos_ll
   cp angha-ll-stm32f1/*.ll arquivos_ll/
   ```

3. **Certifique-se de que:**

   - Os IRs são **não otimizados**;
   - O *target triple* é adequado para STM32, por exemplo: `thumbv7m-none-eabi`;
   - O *cpu* usado é o do `STM32F103C8T6` (ex.: `cortex-m3`).

---

## 2️ Medir as flags padrão do LLVM (`MedePadrao.sh`)

Este passo é útil para comparação com `-Oz` e demais flags padrão, mas não é estritamente obrigatório para gerar o `.jsonl`.

### 2.1. Ajustar caminhos em `MedePadrao.sh`

Abra o script e revise:

- **Pasta raiz para resultados:**

  ```bash
  ROOT_DIR="${2:-$PWD}"
  ```

- **Caminho do CSV global via variável de ambiente `GLOBAL_CSV`**  
  (configurada em `parallelrun_ForMedePadrao.py`):

  ```python
  env["GLOBAL_CSV"] = "/caminho/para/dec_otimizacoes_GLOBAL.csv"
  ```

### 2.2. Tornar o script executável

```bash
chmod +x MedePadrao.sh
```

### 2.3. Executar em um único arquivo

```bash
./MedePadrao.sh caminho/para/arquivo.ll [pasta_raiz]
```

**O script:**

- Gera IR e objeto para cada flag (`-O1`, `-O2`, `-O3`, `-Os`, `-Oz`);
- Mede o tamanho com `llvm-size-20`;
- Atualiza o CSV global (`dec_otimizacoes_GLOBAL.csv`).

### 2.4. Rodar em lote com `parallelrun_ForMedePadrao.py`

No início do script, ajuste:

```python
cpus = 6                      # número de threads
folder = "arquivos_ll"        # pasta com os .ll
command = "./MedePadrao.sh"
env["GLOBAL_CSV"] = "/caminho/para/dec_otimizacoes_GLOBAL.csv"
```

Depois execute:

```bash
python3 parallelrun_ForMedePadrao.py
```

---

## 3️ Rodar as sequências de Faustino (`rodar_seq_uniq.sh`)

### 3.1. `sequencias_unicas.txt`

- Cada linha contém uma sequência de passes válida para o `opt-20`;
- Arquivo já adaptado ao *new pass manager*.

### 3.2. Ajustar e habilitar `rodar_seq_uniq.sh`

Verifique no topo do script (exemplo):

```bash
INPUT="$1"
SEQ_FILE="${2:-sequencias_unicas.txt}"
OUTPUT_ROOT="Resultados_seqUnica"
TMPDIR=$(mktemp -d)
```

E, mais abaixo, se os binários usam os nomes corretos (`opt-20`, `llc-20`, `clang-20`) e se o alvo (`-mtriple`, `-mcpu`) está configurado para `cortex-m3`.

Torne o script executável:

```bash
chmod +x rodar_seq_uniq.sh
```

### 3.3. Rodar em um único arquivo

```bash
./rodar_seq_uniq.sh caminho/para/arquivo.ll [sequencias.txt]
```

**O script:**

- Testa todas as sequências em `sequencias_unicas.txt` para aquele `.ll`;
- Cria `Resultados_seqUnica/<nome_do_arquivo>/` com os artefatos gerados;
- Registra o melhor resultado em um CSV (utilizado depois na consolidação).

### 3.4. Rodar em lote com `parallelrun_forRodar_seq.py`

No script:

```python
cpus = 5
folder = "arquivos_ll"
command = "./rodar_seq_uniq.sh"
```

Ajuste `cpus` e `folder` conforme sua máquina e organização.

Execute:

```bash
python3 parallelrun_forRodar_seq.py
```

Ao final você terá:

- Uma árvore `Resultados_seqUnica/` com subpastas por programa;
- CSVs locais com medições de `dec_bytes`.

---

## 4️ Consolidar os melhores resultados (`coleta_melhores.py`)

O script `coleta_melhores.py` percorre `Resultados_seqUnica/`, descobre o melhor objeto para cada `.ll` (menor `dec_bytes`) e gera um CSV único, recomendado utilizar somente ao fazer uso do `parallelrun_forRodar_seq.py`:

```csv
arquivo,dec_bytes
prog1.ll,1234
prog2.ll,980
...
```

**Uso típico:**

```bash
python3 coleta_melhores.py Resultados_seqUnica
```

O arquivo `melhores.csv` será criado no diretório pai de `Resultados_seqUnica` (normalmente o próprio `STM32/`).

---

## 5️ Gerar os pares prompt–label (`promptLavel.py`)

Com `melhores.csv` pronto e os IRs em `arquivos_ll/`, já é possível montar os pares para treinamento.

### 5.1. Parâmetros esperados (exemplo)

A partir da pasta `STM32/prompt_label/`:

```bash
python3 promptLavel.py   --hf_token SEU_TOKEN_HF   --csv ../melhores.csv   --dir_ir ../arquivos_ll   --dir_res ../
```

- `--hf_token`  
  Token do Hugging Face (necessário se o script carregar tokenizer/modelo privado).  
  Para modelos públicos, pode ser opcional.

- `--csv`  
  Caminho para o `melhores.csv`.

- `--dir_ir`  
  Diretório com os `.ll` de entrada (os mesmos usados no `rodar_seq_uniq.sh`).

- `--dir_res`  
  Diretório onde se encontra `Resultados_seqUnica/`.

### 5.2. Saídas

- **`saida.jsonl`**  
  Arquivo com pares *prompt–label* no formato de conversa, por exemplo:

  ```json
  {
    "messages": [
      {
        "role": "user",
        "content": "Tell me what passes to run... [code] ...IR... [/code]"
      },
      {
        "role": "assistant",
        "content": "Run the following passes ..."
      }
    ]
  }
  ```

- **`tokens.txt`**  
  Arquivo texto com a contagem de tokens de cada par, útil para análise de janela de contexto.
