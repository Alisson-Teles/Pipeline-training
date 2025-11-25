
/tmp/tmp.41f9HzvSWC/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<tcan4x5x_priv:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<tcan4x5x_check_wake>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r1, [r0, #0xc]
               	ldr	r0, [r0, #0x8]
               	orrs.w	r2, r0, r1
               	it	eq
               	popeq	{r4, r6, r7, pc}
               	bl	0x22 <tcan4x5x_check_wake+0x12> @ imm = #-0x4
               	ldrd	r2, r1, [r4]
               	orrs.w	r3, r2, r1
               	it	ne
               	cmpne	r0, #0x0
               	bne	0x36 <tcan4x5x_check_wake+0x26> @ imm = #0x0
               	pop	{r4, r6, r7, pc}
               	mov	r0, r2
               	movs	r2, #0x0
               	bl	0x3a <tcan4x5x_check_wake+0x2a> @ imm = #-0x4
               	movs	r0, #0x5
               	movs	r1, #0x32
               	bl	0x42 <tcan4x5x_check_wake+0x32> @ imm = #-0x4
               	ldrd	r0, r1, [r4]
               	movs	r2, #0x1
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x50 <tcan4x5x_check_wake+0x40> @ imm = #-0x4
