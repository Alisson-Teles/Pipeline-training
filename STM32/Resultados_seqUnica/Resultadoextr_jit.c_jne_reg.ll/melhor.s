
/tmp/tmp.nh98beSWPA/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<nfp_prog:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<nfp_insn_meta:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<jne_reg>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r2, #0x0
               	movw	r3, #0x0
               	movt	r2, #0x0
               	movt	r3, #0x0
               	ldr	r2, [r2]
               	ldr	r3, [r3]
               	pop.w	{r7, lr}
               	b.w	0x34 <jne_reg+0x1c>     @ imm = #-0x4
