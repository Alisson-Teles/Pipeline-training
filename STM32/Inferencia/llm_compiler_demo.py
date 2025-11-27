# This is a set of super simple inference functions to try out LLM Compiler.
# This is just an example, not the 'recommended' way to do it. 
# It emphasizes simplicity over efficiency.
#
# This has been tested on a V100 32Gb GPU. If your GPU is smaller than that, it will likely fail. 
# Run it in CPU mode and it should work, albeit very, very slowly.
#
# You may need to set the HuggingFace access token
# see https://huggingface.co/docs/hub/security-tokens
# Once you have a token, export it before running this script
#  export HF_TOKEN=...
#
# The API is:
#   # Create a compiler object
#   llmc = LLMCompiler()
#
#   # Do ordinary inference
#   output = llmc.infer("A prompt")
#
#   # Emulate the compiler
#   # Pass in an LLVM IR, a passes argument for opt, the number of instructions in that IR and the number of bytes in the object file.
#   # This produces an IR as output
#   output = llmc.emulate_ir(ir, ir_count, bin_size)
#   # This produces assembly as output
#   output = llmc.emulate_ir(ir, ir_count, bin_size)
#
#   # Get optimisations for code size
#   # Pass in an IR
#   output = llmc.optimize_for_code_size(ir)
#
#   # Disassemble to IR
#   # Pass in assembly
#   output = llmc.disassemble(asm)
#
# Note that only models named llm-compiler-\db-ftd have been fine-tuned for the last two tasks

from transformers import AutoTokenizer, AutoModelForCausalLM
from textwrap import indent
import torch

MODEL_NAMES = [
    "facebook/llm-compiler-7b",
    "facebook/llm-compiler-13b",
    "facebook/llm-compiler-7b-ftd",
    "facebook/llm-compiler-13b-ftd",
    "Cal-mfbc5446/LlmCompiler-Stm32FineTunningFinal",
]

class LLM_Compiler:
    def __init__(self, model_name: str = "Cal-mfbc5446/LlmCompiler-Stm32FineTunningFinal", device: str = "cuda" if torch.cuda.is_available() else "cpu"):
        if model_name not in MODEL_NAMES:
            raise ValueError(f"model_name must be one of {MODEL_NAMES}")
        self.model_name = model_name
        self.device = device
        self.tokenizer = AutoTokenizer.from_pretrained(self.model_name)
        self.model = AutoModelForCausalLM.from_pretrained(self.model_name).to(self.device)
        self.model.eval()
    
    def infer(self, prompt: str, max_new_tokens: int = 50) -> str:
        inputs = self.tokenizer(prompt, return_tensors="pt").to(self.device)
        outputs = self.model.generate(**inputs, max_new_tokens=max_new_tokens)
        text: str = self.tokenizer.decode(outputs[0], skip_special_tokens=True)
        return text[len(prompt): ]
    
    def emulate_ir(self, ir: str, passes: str, ir_count: int, bin_size: int, max_new_tokens: int = 50) -> str:
        prompt = f"""\
[INST] Give the LLVM-IR for the following code when optimized using opt -p '{passes}':

<code>{ir}</code>

The input code has instruction count {ir_count} and binary size {bin_size} bytes. [/INST]"""
    
        return self.infer(prompt, max_new_tokens=max_new_tokens)
    
    def emulate_asm(self, ir: str, passes: str, ir_count: int, bin_size: int, max_new_tokens: int = 50) -> str:
        prompt = f"""\
[INST] Give the assembly for the following code when optimized using opt -p '{passes}':

<code>{ir}</code>

The input code has instruction count {ir_count} and binary size {bin_size} bytes. [/INST]"""

        return self.infer(prompt, max_new_tokens=max_new_tokens)
    
    def optimize_for_code_size(self, ir: str, max_new_tokens: int = 50) -> str:
        prompt = f"""\
[INST] Tell me how to optimize this LLVM-IR for object file size:

<code>{ir}</code> [/INST]"""

        return self.infer(prompt, max_new_tokens=max_new_tokens)

    def disassemble(self, asm: str, max_new_tokens: int = 50) -> str:
        prompt = f"""\
[INST] Disassemble this code to LLVM-IR:

<code>{asm}</code> [/INST]"""

        return self.infer(prompt, max_new_tokens=max_new_tokens)
    def teste_for_code_size(self, ir: str, max_new_tokens: int = 75) -> str:
        prompt = f"""\
[INST] Tell me what passes to run on the following LLVM-IR to reduce instruction count for stm32 assembly


<code> {ir}</code> [/INST]"""

        return self.infer(prompt, max_new_tokens=max_new_tokens)

if __name__ == "__main__":
    # Demo the capabilities
    ir_count = 8
    bin_size = 65
    ir = """\
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@xdpy = local_unnamed_addr global i32 0
@xgc = local_unnamed_addr global i32 0
@xwin = local_unnamed_addr global i32 0

declare i32 @XFillRectangle(i32, i32, i32, i32, i32, i32, i32) local_unnamed_addr addrspace(1) #0

define void @fillrect(i32 %x, i32 %y, i32 %w, i32 %h) local_unnamed_addr addrspace(1) #0 {
body:
  %cmpi = icmp sgt i32 %w, 0
  %cmpi7 = icmp sgt i32 %h, 0
  %phi = select i1 %cmpi, i1 %cmpi7, i1 false
  br i1 %phi, label %if_then, label %if_cont

if_then:                                          ; preds = %body
  %xdpy = load i32, ptr @xdpy, align 4
  %xwin = load i32, ptr @xwin, align 4
  %xgc = load i32, ptr @xgc, align 4
  %0 = tail call addrspace(1) i32 @XFillRectangle(i32 %xdpy, i32 %xwin, i32 %xgc, i32 %x, i32 %y, i32 %w, i32 %h)
  br label %if_cont

if_cont:                                          ; preds = %body, %if_then
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
"""

    asm = """\
.text
    .file	"-"
    .globl	add_two                         # -- Begin function add_two
    .type	add_two,@function
add_two:                                # @add_two
    .cfi_startproc
# %bb.0:
    movl	%edi, -4(%rsp)
    movl	%esi, -8(%rsp)
    movl	-4(%rsp), %eax
    addl	-8(%rsp), %eax
    retq
.Lfunc_end0:
    .size	add_two, .Lfunc_end0-add_two
    .cfi_endproc
                                        # -- End function
    .ident	"clang version 17.0.6 (git@github.com:fairinternal/CodeGen.git b05db9bbf7a92019267416c1bb9996fe6134e3f1)"
    .section	".note.GNU-stack","",@progbits
    .addrsig
"""

    passes = "module(default<Oz>)"
    max_new_tokens = 75

    # Get the model
    llm_compiler = LLM_Compiler()
    """
    print(f"Emulating the 'opt -p {passes}' on an ir, producing ir")
    print(indent(llm_compiler.emulate_ir(ir, passes, ir_count, bin_size, max_new_tokens), "    "))

    print(f"Emulating the 'opt -p {passes}' on an ir, producing asm")
    print(indent(llm_compiler.emulate_asm(ir, passes, ir_count, bin_size, max_new_tokens), "    "))

    print(f"Getting the optimal passes for code size")
    print(indent(llm_compiler.optimize_for_code_size(ir, max_new_tokens), "    "))

    print(f"Disassembling to ir")
    print(indent(llm_compiler.disassemble(asm, max_new_tokens), "    "))

    """

    print(f"primeiro teste do modelo refinado ")
    print(indent(llm_compiler.teste_for_code_size(ir),"    "))

    
