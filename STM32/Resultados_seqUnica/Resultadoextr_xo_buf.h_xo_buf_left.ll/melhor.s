
/tmp/tmp.Z8tobxKdAD/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<xo_buf_left>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldrd	r1, r2, [r0]
               	ldr	r0, [r0, #0x8]
               	subs	r1, r1, r2
               	add	r0, r1
               	pop	{r7, pc}
