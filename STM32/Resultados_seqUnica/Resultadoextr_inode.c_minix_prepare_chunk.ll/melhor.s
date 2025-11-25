
/tmp/tmp.AWeLqsiozF/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<page:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<minix_prepare_chunk>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r3, #0x0
               	movt	r3, #0x0
               	ldr	r3, [r3]
               	pop.w	{r7, lr}
               	b.w	0x1e <minix_prepare_chunk+0x12> @ imm = #-0x4
