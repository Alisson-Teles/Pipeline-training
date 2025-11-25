
/tmp/tmp.HDB6velGpL/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<normalize_constant_expr>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r3, #0x0
               	movt	r3, #0x0
               	ldrd	r12, r2, [r0]
               	ldr	r1, [r3, #0x4]
               	ldr	r3, [r3]
               	eors	r1, r2
               	eor.w	r2, r12, r3
               	orrs	r1, r2
               	it	ne
               	popne	{r7, pc}
               	ldr	r0, [r0, #0x8]
               	pop.w	{r7, lr}
               	b.w	0x36 <normalize_constant_expr+0x26> @ imm = #-0x4
