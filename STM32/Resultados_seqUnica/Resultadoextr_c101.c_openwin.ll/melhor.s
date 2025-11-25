
/tmp/tmp.K7yZ0x2OC0/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<openwin>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r12, r0
               	ldrd	r2, lr, [r0]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldrd	r3, r4, [r0]
               	mov	r0, r1
               	adds	r2, r2, r3
               	adc.w	r3, r4, lr
               	str.w	r1, [r12, #0x8]
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x36 <openwin+0x26>     @ imm = #-0x4
