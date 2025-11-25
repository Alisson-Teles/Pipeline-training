
/tmp/tmp.xd9fJXZJJg/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mt76_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mt76_rev>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldrh	r0, [r0]
               	pop	{r7, pc}
