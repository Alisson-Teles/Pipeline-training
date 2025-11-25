
/tmp/tmp.hKU0iGlJaf/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<sigterm_handler>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r0, #0x7b
               	pop.w	{r7, lr}
               	b.w	0xa <sigterm_handler+0xa> @ imm = #-0x4
