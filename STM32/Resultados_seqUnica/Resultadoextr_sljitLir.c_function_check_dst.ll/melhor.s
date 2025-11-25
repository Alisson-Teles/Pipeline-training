
/tmp/tmp.9HhTyoI1Yf/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<sljit_compiler:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<function_check_dst>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r10, r11}
               	sub	sp, #0x4
               	ldr	r1, [r0]
               	adds	r1, #0x1
               	itt	ne
               	ldrne	r1, [r0, #0x4]
               	addsne.w	r1, r1, #0x1
               	bne	0x2c <function_check_dst+0x1c> @ imm = #0x2
               	movs	r0, #0x0
               	b	0x6a <function_check_dst+0x5a> @ imm = #0x3c
               	mov	r8, r0
               	ldrd	r6, r4, [r7, #16]
               	ldrd	r11, r9, [r7, #8]
               	mov	r0, r2
               	mov	r1, r3
               	mov	r10, r2
               	mov	r5, r3
               	bl	0x3e <function_check_dst+0x2e> @ imm = #-0x4
               	orrs	r0, r1
               	bne	0x60 <function_check_dst+0x50> @ imm = #0x18
               	orrs.w	r0, r6, r4
               	beq	0x74 <function_check_dst+0x64> @ imm = #0x26
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldm	r0, {r0, r1}
               	eors	r1, r5
               	eor.w	r0, r0, r10
               	orrs	r0, r1
               	bne	0x74 <function_check_dst+0x64> @ imm = #0x12
               	orr.w	r0, r11, r9
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	movs	r1, #0x0
               	add	sp, #0x4
               	pop.w	{r8, r9, r10, r11}
               	pop	{r4, r5, r6, r7, pc}
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	bl	0x7e <function_check_dst+0x6e> @ imm = #-0x4
               	eors	r1, r5
               	eor.w	r0, r0, r10
               	orrs	r0, r1
               	bne	0xa8 <function_check_dst+0x98> @ imm = #0x1a
               	cmp.w	r9, #0x0
               	mov.w	r0, #0x0
               	bmi	0x6a <function_check_dst+0x5a> @ imm = #-0x2e
               	ldrd	r1, r2, [r8, #8]
               	subs.w	r1, r11, r1
               	sbcs.w	r1, r9, r2
               	it	lt
               	movlt	r0, #0x1
               	b	0x6a <function_check_dst+0x5a> @ imm = #-0x40
               	mov	r3, r5
               	mov	r2, r10
               	str.w	r11, [r7, #0x8]
               	mov	r0, r8
               	str.w	r9, [r7, #0xc]
               	add	sp, #0x4
               	pop.w	{r8, r9, r10, r11}
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0xc0 <function_check_dst+0xb0> @ imm = #-0x4
