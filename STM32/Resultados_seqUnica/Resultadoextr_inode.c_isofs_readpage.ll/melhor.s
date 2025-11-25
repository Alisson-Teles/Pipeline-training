
/tmp/tmp.jh3nZPL7w1/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<page:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<file:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<isofs_readpage>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r0, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	pop.w	{r7, lr}
               	b.w	0x2c <isofs_readpage+0x14> @ imm = #-0x4
