
/tmp/tmp.aKGpdK2vvm/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<x86_emulate_ctxt:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<emulate_db>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	movs	r2, #0x0
               	movs	r3, #0x0
               	pop.w	{r7, lr}
               	b.w	0x22 <emulate_db+0x16>  @ imm = #-0x4
