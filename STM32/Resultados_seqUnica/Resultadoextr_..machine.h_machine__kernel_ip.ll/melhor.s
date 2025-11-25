
/tmp/tmp.ukQqWCTq7x/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<machine:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<machine__kernel_ip>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r3
               	mov	r5, r2
               	bl	0x14 <machine__kernel_ip+0x8> @ imm = #-0x4
               	subs	r0, r5, r0
               	sbcs.w	r0, r4, r1
               	mov.w	r0, #0x0
               	it	ge
               	movge	r0, #0x1
               	pop	{r4, r5, r7, pc}
