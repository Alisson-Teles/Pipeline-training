
/tmp/tmp.JwHWeCoWwE/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<Intensity>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldrd	r1, r2, [r0]
               	movs	r3, #0x3b
               	ldr	r0, [r0, #0x8]
               	rsb	r1, r1, r1, lsl #4
               	muls	r2, r3, r2
               	add.w	r1, r2, r1, lsl #1
               	movs	r2, #0xb
               	mla	r0, r0, r2, r1
               	asrs	r1, r0, #0x1f
               	add.w	r0, r0, r1, lsr #30
               	asrs	r0, r0, #0x2
               	pop	{r7, pc}
