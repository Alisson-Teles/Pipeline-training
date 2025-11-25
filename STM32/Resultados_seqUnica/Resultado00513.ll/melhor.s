
/tmp/tmp.jp8Le04wx2/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<safe_unary_minus_func_int8_t_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	rsbs	r0, r0, #0
               	pop	{r7, pc}

<safe_add_func_int8_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	sxtb	r2, r0
               	cmp	r2, #0x1
               	blt	0x24 <safe_add_func_int8_t_s_s+0x1c> @ imm = #0x10
               	sxtb	r3, r1
               	cmp	r3, #0x1
               	blt	0x24 <safe_add_func_int8_t_s_s+0x1c> @ imm = #0xa
               	eor	r3, r1, #0x7f
               	sxtb	r3, r3
               	cmp	r2, r3
               	it	gt
               	popgt	{r7, pc}
               	and.w	r3, r0, r1
               	sxtb.w	r12, r3
               	mvn	r3, #0x7f
               	subs	r3, r3, r1
               	sxtb	r3, r3
               	add	r1, r0
               	cmp	r3, r2
               	it	le
               	movle	r0, r1
               	cmp.w	r12, #0x0
               	it	pl
               	movpl	r0, r1
               	pop	{r7, pc}
               	nop

<safe_sub_func_int8_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	eor.w	r2, r1, r0
               	movs	r3, #0x7f
               	orn	r3, r3, r2
               	add	r3, r1
               	ands	r2, r3
               	sxtb	r2, r2
               	cmp	r2, #0x0
               	it	pl
               	subpl	r0, r0, r1
               	pop	{r7, pc}

<safe_mul_func_int8_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	sxtb	r2, r0
               	cmp	r2, #0x1
               	sxtb.w	lr, r1
               	it	ge
               	cmpge.w	lr, #0x1
               	bge	0x98 <safe_mul_func_int8_t_s_s+0x34> @ imm = #0x1e
               	cmp	r2, #0x1
               	blt	0xa8 <safe_mul_func_int8_t_s_s+0x44> @ imm = #0x2a
               	cmp.w	lr, #0x0
               	bgt	0xa8 <safe_mul_func_int8_t_s_s+0x44> @ imm = #0x24
               	uxtb.w	r12, r0
               	mvn	r2, #0x7f
               	sdiv	r2, r2, r12
               	sxth	r2, r2
               	cmp	r2, lr
               	it	le
               	mulle	r0, r1, r0
               	pop	{r7, pc}
               	uxtb.w	r12, r1
               	movs	r3, #0x7f
               	udiv	r3, r3, r12
               	cmp	r2, r3
               	bgt	0x96 <safe_mul_func_int8_t_s_s+0x32> @ imm = #-0x12
               	b	0xde <safe_mul_func_int8_t_s_s+0x7a> @ imm = #0x34
               	cmp	r2, #0x0
               	bgt	0xc4 <safe_mul_func_int8_t_s_s+0x60> @ imm = #0x16
               	cmp.w	lr, #0x1
               	blt	0xc4 <safe_mul_func_int8_t_s_s+0x60> @ imm = #0x10
               	uxtb.w	r12, r1
               	mvn	r3, #0x7f
               	sdiv	r3, r3, r12
               	sxth	r3, r3
               	cmp	r3, r2
               	bgt	0x96 <safe_mul_func_int8_t_s_s+0x32> @ imm = #-0x30
               	cmp.w	r2, #0xffffffff
               	it	le
               	cmple.w	lr, #0x0
               	bgt	0xde <safe_mul_func_int8_t_s_s+0x7a> @ imm = #0xc
               	movs	r3, #0x7f
               	sdiv	r2, r3, r2
               	sxtb	r2, r2
               	cmp	lr, r2
               	it	lt
               	poplt	{r7, pc}
               	muls	r0, r1, r0
               	pop	{r7, pc}
               	nop

<safe_mod_func_int8_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	lsls	r2, r1, #0x18
               	it	eq
               	popeq	{r7, pc}
               	uxtb	r2, r0
               	cmp	r2, #0x80
               	bne	0xfe <safe_mod_func_int8_t_s_s+0x1a> @ imm = #0x8
               	uxtb	r2, r1
               	cmp	r2, #0xff
               	bne	0xfe <safe_mod_func_int8_t_s_s+0x1a> @ imm = #0x2
               	movs	r0, #0x80
               	pop	{r7, pc}
               	sxtb	r1, r1
               	sxtb	r0, r0
               	sdiv	r2, r0, r1
               	mls	r0, r2, r1, r0
               	pop	{r7, pc}

<safe_div_func_int8_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	lsls	r2, r1, #0x18
               	it	eq
               	popeq	{r7, pc}
               	uxtb	r2, r0
               	cmp	r2, #0x80
               	bne	0x126 <safe_div_func_int8_t_s_s+0x1a> @ imm = #0x8
               	uxtb	r2, r1
               	cmp	r2, #0xff
               	bne	0x126 <safe_div_func_int8_t_s_s+0x1a> @ imm = #0x2
               	movs	r0, #0x80
               	pop	{r7, pc}
               	sxtb	r1, r1
               	sxtb	r0, r0
               	sdiv	r0, r0, r1
               	pop	{r7, pc}

<safe_lshift_func_int8_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	uxtb.w	r12, r1
               	movs	r3, #0x7f
               	lsr.w	r3, r3, r12
               	sxtb	r2, r0
               	sxtb	r3, r3
               	cmp	r2, r3
               	mov	r3, r1
               	it	gt
               	movgt	r3, #0x0
               	cmp	r1, #0x7
               	it	hi
               	movhi	r3, #0x0
               	cmp	r2, #0x0
               	it	mi
               	movmi	r3, #0x0
               	uxtb	r1, r3
               	lsls	r0, r1
               	pop	{r7, pc}

<safe_lshift_func_int8_t_s_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	uxtb.w	r12, r1
               	movs	r3, #0x7f
               	lsr.w	r3, r3, r12
               	sxtb	r2, r0
               	sxtb	r3, r3
               	cmp	r2, r3
               	mov	r3, r1
               	it	gt
               	movgt	r3, #0x0
               	cmp	r1, #0x7
               	it	hi
               	movhi	r3, #0x0
               	cmp	r2, #0x0
               	it	mi
               	movmi	r3, #0x0
               	uxtb	r1, r3
               	lsls	r0, r1
               	pop	{r7, pc}

<safe_rshift_func_int8_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	sxtb	r0, r0
               	cmp	r1, #0x7
               	it	hi
               	movhi	r1, #0x0
               	cmp	r0, #0x0
               	it	mi
               	movmi	r1, #0x0
               	uxtb	r1, r1
               	asrs	r0, r1
               	pop	{r7, pc}

<safe_rshift_func_int8_t_s_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	sxtb	r0, r0
               	cmp	r1, #0x7
               	it	hi
               	movhi	r1, #0x0
               	cmp	r0, #0x0
               	it	mi
               	movmi	r1, #0x0
               	uxtb	r1, r1
               	asrs	r0, r1
               	pop	{r7, pc}

<safe_unary_minus_func_int16_t_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	rsbs	r0, r0, #0
               	pop	{r7, pc}

<safe_add_func_int16_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	sxth	r2, r0
               	cmp	r2, #0x1
               	blt	0x1de <safe_add_func_int16_t_s_s+0x1e> @ imm = #0x12
               	sxth	r3, r1
               	cmp	r3, #0x1
               	blt	0x1de <safe_add_func_int16_t_s_s+0x1e> @ imm = #0xc
               	movw	r3, #0x7fff
               	eors	r3, r1
               	sxth	r3, r3
               	cmp	r2, r3
               	it	gt
               	popgt	{r7, pc}
               	and.w	r3, r0, r1
               	sxth.w	r12, r3
               	movw	r3, #0x8000
               	movt	r3, #0xffff
               	subs	r3, r3, r1
               	sxth	r3, r3
               	add	r1, r0
               	cmp	r3, r2
               	it	le
               	movle	r0, r1
               	cmp.w	r12, #0x0
               	it	pl
               	movpl	r0, r1
               	pop	{r7, pc}

<safe_sub_func_int16_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	pop	{r7, pc}
               	nop

<safe_mul_func_int16_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	sxth	r2, r0
               	cmp	r2, #0x1
               	sxth.w	lr, r1
               	it	ge
               	cmpge.w	lr, #0x1
               	bge	0x242 <safe_mul_func_int16_t_s_s+0x36> @ imm = #0x20
               	cmp	r2, #0x1
               	blt	0x254 <safe_mul_func_int16_t_s_s+0x48> @ imm = #0x2e
               	cmp.w	lr, #0x0
               	bgt	0x254 <safe_mul_func_int16_t_s_s+0x48> @ imm = #0x28
               	movw	r2, #0x8000
               	uxth.w	r12, r0
               	movt	r2, #0xffff
               	sdiv	r2, r2, r12
               	cmp	r2, lr
               	it	le
               	mulle	r0, r1, r0
               	pop	{r7, pc}
               	uxth.w	r12, r1
               	movw	r3, #0x7fff
               	udiv	r3, r3, r12
               	cmp	r2, r3
               	bgt	0x240 <safe_mul_func_int16_t_s_s+0x34> @ imm = #-0x14
               	b	0x28e <safe_mul_func_int16_t_s_s+0x82> @ imm = #0x38
               	cmp	r2, #0x0
               	bgt	0x272 <safe_mul_func_int16_t_s_s+0x66> @ imm = #0x18
               	cmp.w	lr, #0x1
               	blt	0x272 <safe_mul_func_int16_t_s_s+0x66> @ imm = #0x12
               	movw	r3, #0x8000
               	uxth.w	r12, r1
               	movt	r3, #0xffff
               	sdiv	r3, r3, r12
               	cmp	r3, r2
               	bgt	0x240 <safe_mul_func_int16_t_s_s+0x34> @ imm = #-0x34
               	cmp.w	r2, #0xffffffff
               	it	le
               	cmple.w	lr, #0x0
               	bgt	0x28e <safe_mul_func_int16_t_s_s+0x82> @ imm = #0xe
               	movw	r3, #0x7fff
               	sdiv	r2, r3, r2
               	sxth	r2, r2
               	cmp	lr, r2
               	it	lt
               	poplt	{r7, pc}
               	muls	r0, r1, r0
               	pop	{r7, pc}
               	nop

<safe_mod_func_int16_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	lsls	r2, r1, #0x10
               	it	eq
               	popeq	{r7, pc}
               	uxth	r2, r0
               	cmp.w	r2, #0x8000
               	bne	0x2b6 <safe_mod_func_int16_t_s_s+0x22> @ imm = #0xe
               	uxth	r2, r1
               	movw	r3, #0xffff
               	cmp	r2, r3
               	bne	0x2b6 <safe_mod_func_int16_t_s_s+0x22> @ imm = #0x4
               	mov.w	r0, #0x8000
               	pop	{r7, pc}
               	sxth	r1, r1
               	sxth	r0, r0
               	sdiv	r2, r0, r1
               	mls	r0, r2, r1, r0
               	pop	{r7, pc}

<safe_div_func_int16_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	lsls	r2, r1, #0x10
               	it	eq
               	popeq	{r7, pc}
               	uxth	r2, r0
               	cmp.w	r2, #0x8000
               	bne	0x2e6 <safe_div_func_int16_t_s_s+0x22> @ imm = #0xe
               	uxth	r2, r1
               	movw	r3, #0xffff
               	cmp	r2, r3
               	bne	0x2e6 <safe_div_func_int16_t_s_s+0x22> @ imm = #0x4
               	mov.w	r0, #0x8000
               	pop	{r7, pc}
               	sxth	r1, r1
               	sxth	r0, r0
               	sdiv	r0, r0, r1
               	pop	{r7, pc}

<safe_lshift_func_int16_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	uxth.w	r12, r1
               	movw	r3, #0x7fff
               	lsr.w	r3, r3, r12
               	sxth	r2, r0
               	sxth	r3, r3
               	cmp	r2, r3
               	mov	r3, r1
               	it	gt
               	movgt	r3, #0x0
               	cmp	r1, #0xf
               	it	hi
               	movhi	r3, #0x0
               	cmp	r2, #0x0
               	it	mi
               	movmi	r3, #0x0
               	uxth	r1, r3
               	lsls	r0, r1
               	pop	{r7, pc}
               	nop

<safe_lshift_func_int16_t_s_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	uxth.w	r12, r1
               	movw	r3, #0x7fff
               	lsr.w	r3, r3, r12
               	sxth	r2, r0
               	sxth	r3, r3
               	cmp	r2, r3
               	mov	r3, r1
               	it	gt
               	movgt	r3, #0x0
               	cmp	r1, #0xf
               	it	hi
               	movhi	r3, #0x0
               	cmp	r2, #0x0
               	it	mi
               	movmi	r3, #0x0
               	uxth	r1, r3
               	lsls	r0, r1
               	pop	{r7, pc}
               	nop

<safe_rshift_func_int16_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	sxth	r0, r0
               	cmp	r1, #0xf
               	it	hi
               	movhi	r1, #0x0
               	cmp	r0, #0x0
               	it	mi
               	movmi	r1, #0x0
               	uxth	r1, r1
               	asrs	r0, r1
               	pop	{r7, pc}

<safe_rshift_func_int16_t_s_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	sxth	r0, r0
               	cmp	r1, #0xf
               	it	hi
               	movhi	r1, #0x0
               	cmp	r0, #0x0
               	it	mi
               	movmi	r1, #0x0
               	uxth	r1, r1
               	asrs	r0, r1
               	pop	{r7, pc}

<safe_unary_minus_func_int32_t_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	rsbs	r0, r0, #0
               	pop	{r7, pc}

<safe_add_func_int32_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r0, #0x1
               	it	ge
               	cmpge	r1, #0x1
               	blt	0x3a0 <safe_add_func_int32_t_s_s+0x18> @ imm = #0xa
               	mvn	r2, #0x80000000
               	eors	r2, r1
               	cmp	r0, r2
               	it	gt
               	popgt	{r7, pc}
               	rsb.w	r3, r1, #0x80000000
               	and.w	r2, r0, r1
               	add	r1, r0
               	cmp	r3, r0
               	it	le
               	movle	r0, r1
               	cmp	r2, #0x0
               	it	pl
               	movpl	r0, r1
               	pop	{r7, pc}

<safe_sub_func_int32_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	pop	{r7, pc}
               	nop

<safe_mul_func_int32_t_s_s>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	cmp	r0, #0x1
               	mov	r4, r1
               	it	ge
               	cmpge	r4, #0x1
               	bge	0x402 <safe_mul_func_int32_t_s_s+0x42> @ imm = #0x2e
               	cmp	r0, #0x1
               	blt	0x410 <safe_mul_func_int32_t_s_s+0x50> @ imm = #0x38
               	cmp	r4, #0x0
               	bgt	0x410 <safe_mul_func_int32_t_s_s+0x50> @ imm = #0x34
               	mov	r5, r0
               	mov.w	r0, #0x80000000
               	mov.w	r1, #0xffffffff
               	mov	r2, r5
               	movs	r3, #0x0
               	asrs	r6, r4, #0x1f
               	bl	0x3ea <safe_mul_func_int32_t_s_s+0x2a> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r5
               	subs	r2, r4, r2
               	sbcs.w	r1, r6, r1
               	it	ge
               	mulge	r0, r4, r0
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
               	mvn	r1, #0x80000000
               	udiv	r1, r1, r4
               	cmp	r0, r1
               	bgt	0x3fc <safe_mul_func_int32_t_s_s+0x3c> @ imm = #-0x14
               	b	0x442 <safe_mul_func_int32_t_s_s+0x82> @ imm = #0x30
               	cmp	r0, #0x0
               	bgt	0x438 <safe_mul_func_int32_t_s_s+0x78> @ imm = #0x22
               	cmp	r4, #0x1
               	blt	0x438 <safe_mul_func_int32_t_s_s+0x78> @ imm = #0x1e
               	asrs	r6, r0, #0x1f
               	mov	r5, r0
               	mov.w	r0, #0x80000000
               	mov.w	r1, #0xffffffff
               	mov	r2, r4
               	movs	r3, #0x0
               	bl	0x428 <safe_mul_func_int32_t_s_s+0x68> @ imm = #-0x4
               	mov	r2, r0
               	subs	r2, r5, r2
               	mov	r0, r5
               	sbcs.w	r1, r6, r1
               	blt	0x3fc <safe_mul_func_int32_t_s_s+0x3c> @ imm = #-0x3e
               	cmp.w	r0, #0xffffffff
               	it	le
               	cmple	r4, #0x0
               	ble	0x44a <safe_mul_func_int32_t_s_s+0x8a> @ imm = #0x6
               	muls	r0, r4, r0
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
               	mvn	r1, #0x80000000
               	sdiv	r1, r1, r0
               	cmp	r4, r1
               	blt	0x3fc <safe_mul_func_int32_t_s_s+0x3c> @ imm = #-0x5c
               	b	0x442 <safe_mul_func_int32_t_s_s+0x82> @ imm = #-0x18

<safe_mod_func_int32_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r1, #0x0
               	it	eq
               	popeq	{r7, pc}
               	cmp.w	r0, #0x80000000
               	it	eq
               	addseq.w	r2, r1, #0x1
               	beq	0x478 <safe_mod_func_int32_t_s_s+0x20> @ imm = #0x8
               	sdiv	r2, r0, r1
               	mls	r0, r2, r1, r0
               	pop	{r7, pc}
               	mov.w	r0, #0x80000000
               	pop	{r7, pc}
               	nop

<safe_div_func_int32_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r1, #0x0
               	it	eq
               	popeq	{r7, pc}
               	cmp.w	r0, #0x80000000
               	it	eq
               	addseq.w	r2, r1, #0x1
               	beq	0x49c <safe_div_func_int32_t_s_s+0x1c> @ imm = #0x4
               	sdiv	r0, r0, r1
               	pop	{r7, pc}
               	mov.w	r0, #0x80000000
               	pop	{r7, pc}
               	nop

<safe_lshift_func_int32_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	mvn	r2, #0x80000000
               	lsrs	r2, r1
               	cmp	r0, r2
               	mov	r2, r1
               	it	gt
               	movgt	r2, #0x0
               	cmp	r1, #0x1f
               	it	hi
               	movhi	r2, #0x0
               	cmp	r0, #0x0
               	it	mi
               	movmi	r2, #0x0
               	lsls	r0, r2
               	pop	{r7, pc}
               	nop

<safe_lshift_func_int32_t_s_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	mvn	r2, #0x80000000
               	lsrs	r2, r1
               	cmp	r0, r2
               	mov	r2, r1
               	it	gt
               	movgt	r2, #0x0
               	cmp	r1, #0x1f
               	it	hi
               	movhi	r2, #0x0
               	cmp	r0, #0x0
               	it	mi
               	movmi	r2, #0x0
               	lsls	r0, r2
               	pop	{r7, pc}
               	nop

<safe_rshift_func_int32_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r1, #0x1f
               	it	hi
               	movhi	r1, #0x0
               	cmp	r0, #0x0
               	it	mi
               	movmi	r1, #0x0
               	asrs	r0, r1
               	pop	{r7, pc}

<safe_rshift_func_int32_t_s_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r1, #0x1f
               	it	hi
               	movhi	r1, #0x0
               	cmp	r0, #0x0
               	it	mi
               	movmi	r1, #0x0
               	asrs	r0, r1
               	pop	{r7, pc}

<safe_unary_minus_func_int64_t_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	rsbs	r0, r0, #0
               	mov.w	r2, #0x0
               	sbc.w	r1, r2, r1
               	pop	{r7, pc}

<safe_add_func_int64_t_s_s>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	rsbs.w	r12, r2, #0x0
               	mov.w	lr, #0x80000000
               	sbc.w	lr, lr, r3
               	subs	r4, r0, #0x1
               	sbcs	r4, r1, #0x0
               	blt	0x558 <safe_add_func_int64_t_s_s+0x34> @ imm = #0x16
               	subs	r4, r2, #0x1
               	sbcs	r4, r3, #0x0
               	blt	0x558 <safe_add_func_int64_t_s_s+0x34> @ imm = #0xe
               	subs.w	r4, r12, r0
               	sbcs.w	r4, lr, r1
               	bge	0x558 <safe_add_func_int64_t_s_s+0x34> @ imm = #0x4
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
               	cmp	r1, #0x0
               	mov.w	r8, #0x0
               	it	mi
               	movmi.w	r8, #0x1
               	cmp	r3, #0x0
               	mov.w	r6, #0x0
               	it	mi
               	movmi	r6, #0x1
               	subs.w	r5, r0, r12
               	mov.w	r4, #0x0
               	sbcs.w	r5, r1, lr
               	it	lt
               	movlt	r4, #0x1
               	adds	r2, r2, r0
               	and.w	r6, r6, r4
               	adcs	r3, r1
               	tst.w	r8, r6
               	it	ne
               	movne	r3, r1
               	mov	r1, r3
               	it	ne
               	movne	r2, r0
               	mov	r0, r2
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}

<safe_sub_func_int64_t_s_s>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	eor.w	r12, r3, r1
               	and	lr, r12, #0x80000000
               	eor.w	lr, lr, r1
               	subs	r4, r0, r2
               	sbc.w	r2, lr, r3
               	eor.w	r2, r2, r3
               	and.w	r2, r2, r12
               	sbc.w	r3, r1, r3
               	cmp	r2, #0x0
               	itt	pl
               	movpl	r0, r4
               	movpl	r1, r3
               	pop	{r4, r6, r7, pc}

<safe_mul_func_int64_t_s_s>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r10}
               	mov	r5, r0
               	subs	r0, #0x1
               	mov	r8, r3
               	mov	r4, r1
               	sbcs	r0, r1, #0x0
               	mov	r10, r2
               	blt	0x614 <safe_mul_func_int64_t_s_s+0x4c> @ imm = #0x32
               	subs.w	r0, r10, #0x1
               	sbcs	r0, r8, #0x0
               	blt	0x614 <safe_mul_func_int64_t_s_s+0x4c> @ imm = #0x28
               	movs	r0, #0x0
               	mov.w	r1, #0x80000000
               	mov	r2, r10
               	mov	r3, r8
               	mov.w	r9, #0x0
               	bl	0x5f8 <safe_mul_func_int64_t_s_s+0x30> @ imm = #-0x4
               	subs	r0, r0, r5
               	sbcs.w	r0, r1, r4
               	blt	0x69c <safe_mul_func_int64_t_s_s+0xd4> @ imm = #0x96
               	subs.w	r0, r10, #0x1
               	sbcs	r0, r8, #0x0
               	it	lt
               	movlt.w	r9, #0x1
               	b	0x63c <safe_mul_func_int64_t_s_s+0x74> @ imm = #0x26
               	subs.w	r0, r10, #0x1
               	sbcs	r0, r8, #0x0
               	mov.w	r9, #0x0
               	it	lt
               	movlt.w	r9, #0x1
               	subs	r0, r5, #0x1
               	sbcs	r0, r4, #0x0
               	mov.w	r0, #0x0
               	blt	0x63c <safe_mul_func_int64_t_s_s+0x74> @ imm = #0x8
               	rsbs.w	r1, r10, #0x0
               	sbcs.w	r0, r0, r8
               	bge	0x676 <safe_mul_func_int64_t_s_s+0xae> @ imm = #0x38
               	rsbs	r0, r5, #0
               	mov.w	r6, #0x0
               	sbcs.w	r0, r6, r4
               	blt	0x668 <safe_mul_func_int64_t_s_s+0xa0> @ imm = #0x1e
               	subs.w	r0, r10, #0x1
               	sbcs	r0, r8, #0x0
               	blt	0x668 <safe_mul_func_int64_t_s_s+0xa0> @ imm = #0x14
               	movs	r0, #0x0
               	mov.w	r1, #0x80000000
               	mov	r2, r10
               	mov	r3, r8
               	bl	0x65c <safe_mul_func_int64_t_s_s+0x94> @ imm = #-0x4
               	subs	r0, r5, r0
               	sbcs.w	r0, r4, r1
               	blt	0x69c <safe_mul_func_int64_t_s_s+0xd4> @ imm = #0x32
               	cmp	r4, #0x0
               	it	mi
               	movmi	r6, #0x1
               	and.w	r0, r6, r9
               	cmp	r0, #0x1
               	bne	0x68e <safe_mul_func_int64_t_s_s+0xc6> @ imm = #0x16
               	movs	r0, #0x0
               	mov.w	r1, #0x80000000
               	mov	r2, r5
               	mov	r3, r4
               	bl	0x680 <safe_mul_func_int64_t_s_s+0xb8> @ imm = #-0x4
               	subs.w	r0, r10, r0
               	sbcs.w	r0, r8, r1
               	blt	0x69c <safe_mul_func_int64_t_s_s+0xd4> @ imm = #0xc
               	umull	r0, r1, r10, r5
               	mla	r1, r10, r4, r1
               	mla	r4, r8, r5, r1
               	mov	r5, r0
               	mov	r0, r5
               	mov	r1, r4
               	pop.w	{r8, r9, r10}
               	pop	{r4, r5, r6, r7, pc}
               	nop

<safe_mod_func_int64_t_s_s>:
               	orrs.w	r12, r2, r3
               	it	eq
               	bxeq	lr
               	push	{r7, lr}
               	mov	r7, sp
               	eor	r12, r1, #0x80000000
               	orrs.w	r12, r12, r0
               	bne	0x6e4 <safe_mod_func_int64_t_s_s+0x3c> @ imm = #0x24
               	mov.w	r12, #0x80000000
               	orn	r12, r12, #0x80000000
               	mov.w	lr, #0xffffffff
               	eor.w	lr, lr, r2
               	eor.w	r12, r12, r3
               	orrs.w	r12, r12, lr
               	bne	0x6e4 <safe_mod_func_int64_t_s_s+0x3c> @ imm = #0xa
               	movs	r0, #0x0
               	mov.w	r1, #0x80000000
               	pop.w	{r7, lr}
               	bx	lr
               	bl	0x6e4 <safe_mod_func_int64_t_s_s+0x3c> @ imm = #-0x4
               	mov	r0, r2
               	mov	r1, r3
               	pop.w	{r7, lr}
               	bx	lr
               	nop

<safe_div_func_int64_t_s_s>:
               	orrs.w	r12, r2, r3
               	it	eq
               	bxeq	lr
               	push	{r7, lr}
               	mov	r7, sp
               	eor	r12, r1, #0x80000000
               	orrs.w	r12, r12, r0
               	bne	0x730 <safe_div_func_int64_t_s_s+0x3c> @ imm = #0x24
               	mov.w	r12, #0x80000000
               	orn	r12, r12, #0x80000000
               	mov.w	lr, #0xffffffff
               	eor.w	lr, lr, r2
               	eor.w	r12, r12, r3
               	orrs.w	r12, r12, lr
               	bne	0x730 <safe_div_func_int64_t_s_s+0x3c> @ imm = #0xa
               	movs	r0, #0x0
               	mov.w	r1, #0x80000000
               	pop.w	{r7, lr}
               	bx	lr
               	bl	0x730 <safe_div_func_int64_t_s_s+0x3c> @ imm = #-0x4
               	pop.w	{r7, lr}
               	bx	lr
               	nop

<safe_lshift_func_int64_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	pop	{r7, pc}
               	nop

<safe_lshift_func_int64_t_s_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	pop	{r7, pc}
               	nop

<safe_rshift_func_int64_t_s_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r2, #0x3f
               	it	hi
               	movhi	r2, #0x0
               	cmp	r1, #0x0
               	it	mi
               	movmi	r2, #0x0
               	asr.w	r3, r1, r2
               	subs.w	r12, r2, #0x20
               	lsr.w	r0, r0, r2
               	rsb.w	r2, r2, #0x20
               	lsl.w	r2, r1, r2
               	orr.w	r0, r0, r2
               	it	pl
               	asrpl	r3, r1, #0x1f
               	it	pl
               	asrpl.w	r0, r1, r12
               	mov	r1, r3
               	pop	{r7, pc}
               	nop

<safe_rshift_func_int64_t_s_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r2, #0x3f
               	it	hi
               	movhi	r2, #0x0
               	cmp	r1, #0x0
               	it	mi
               	movmi	r2, #0x0
               	asr.w	r3, r1, r2
               	subs.w	r12, r2, #0x20
               	lsr.w	r0, r0, r2
               	rsb.w	r2, r2, #0x20
               	lsl.w	r2, r1, r2
               	orr.w	r0, r0, r2
               	it	pl
               	asrpl	r3, r1, #0x1f
               	it	pl
               	asrpl.w	r0, r1, r12
               	mov	r1, r3
               	pop	{r7, pc}
               	nop

<safe_unary_minus_func_uint8_t_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	rsbs	r0, r0, #0
               	uxtb	r0, r0
               	pop	{r7, pc}
               	nop

<safe_add_func_uint8_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	add	r0, r1
               	uxtb	r0, r0
               	pop	{r7, pc}
               	nop

<safe_sub_func_uint8_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	subs	r0, r0, r1
               	uxtb	r0, r0
               	pop	{r7, pc}
               	nop

<safe_mul_func_uint8_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	muls	r0, r1, r0
               	uxtb	r0, r0
               	pop	{r7, pc}
               	nop

<safe_mod_func_uint8_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	cbz	r1, 0x7fa <safe_mod_func_uint8_t_u_u+0xe> @ imm = #0x6
               	udiv	r2, r0, r1
               	mls	r0, r2, r1, r0
               	uxtb	r0, r0
               	pop	{r7, pc}
               	nop

<safe_mod_func_uint8_t_u_u.1>:
               	push	{r7, lr}
               	mov	r7, sp
               	cbz	r1, 0x80e <safe_mod_func_uint8_t_u_u.1+0xe> @ imm = #0x6
               	udiv	r2, r0, r1
               	mls	r0, r2, r1, r0
               	uxtb	r0, r0
               	pop	{r7, pc}
               	nop

<safe_div_func_uint8_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r1, #0x0
               	it	ne
               	udivne	r0, r0, r1
               	pop	{r7, pc}
               	nop

<safe_lshift_func_uint8_t_u_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	uxtb	r3, r1
               	movs	r2, #0xff
               	lsrs	r2, r3
               	uxtb.w	r12, r0
               	uxtb	r2, r2
               	cmp	r12, r2
               	mov	r2, r1
               	it	hi
               	movhi	r2, #0x0
               	cmp	r1, #0x7
               	it	hi
               	movhi	r2, #0x0
               	uxtb	r1, r2
               	lsls	r0, r1
               	uxtb	r0, r0
               	pop	{r7, pc}
               	nop

<safe_lshift_func_uint8_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	uxtb	r3, r1
               	movs	r2, #0xff
               	lsrs	r2, r3
               	uxtb.w	r12, r0
               	uxtb	r2, r2
               	cmp	r12, r2
               	mov	r2, r1
               	it	hi
               	movhi	r2, #0x0
               	cmp	r1, #0x7
               	it	hi
               	movhi	r2, #0x0
               	uxtb	r1, r2
               	lsls	r0, r1
               	uxtb	r0, r0
               	pop	{r7, pc}
               	nop

<safe_rshift_func_uint8_t_u_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r1, #0x7
               	it	hi
               	movhi	r1, #0x0
               	uxtb	r1, r1
               	lsrs	r0, r1
               	pop	{r7, pc}

<safe_rshift_func_uint8_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r1, #0x7
               	it	hi
               	movhi	r1, #0x0
               	uxtb	r1, r1
               	lsrs	r0, r1
               	pop	{r7, pc}

<safe_unary_minus_func_uint16_t_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	rsbs	r0, r0, #0
               	uxth	r0, r0
               	pop	{r7, pc}
               	nop

<safe_add_func_uint16_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	add	r0, r1
               	uxth	r0, r0
               	pop	{r7, pc}
               	nop

<safe_sub_func_uint16_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	subs	r0, r0, r1
               	uxth	r0, r0
               	pop	{r7, pc}
               	nop

<safe_mul_func_uint16_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	muls	r0, r1, r0
               	uxth	r0, r0
               	pop	{r7, pc}
               	nop

<safe_mod_func_uint16_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	cbz	r1, 0x8d2 <safe_mod_func_uint16_t_u_u+0xe> @ imm = #0x6
               	udiv	r2, r0, r1
               	mls	r0, r2, r1, r0
               	uxth	r0, r0
               	pop	{r7, pc}
               	nop

<safe_div_func_uint16_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r1, #0x0
               	it	ne
               	udivne	r0, r0, r1
               	pop	{r7, pc}
               	nop

<safe_lshift_func_uint16_t_u_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	uxth	r3, r1
               	movw	r2, #0xffff
               	lsrs	r2, r3
               	uxth.w	r12, r0
               	uxth	r2, r2
               	cmp	r12, r2
               	mov	r2, r1
               	it	hi
               	movhi	r2, #0x0
               	cmp	r1, #0xf
               	it	hi
               	movhi	r2, #0x0
               	uxth	r1, r2
               	lsls	r0, r1
               	uxth	r0, r0
               	pop	{r7, pc}

<safe_lshift_func_uint16_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	uxth	r3, r1
               	movw	r2, #0xffff
               	lsrs	r2, r3
               	uxth.w	r12, r0
               	uxth	r2, r2
               	cmp	r12, r2
               	mov	r2, r1
               	it	hi
               	movhi	r2, #0x0
               	cmp	r1, #0xf
               	it	hi
               	movhi	r2, #0x0
               	uxth	r1, r2
               	lsls	r0, r1
               	uxth	r0, r0
               	pop	{r7, pc}

<safe_rshift_func_uint16_t_u_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r1, #0xf
               	it	hi
               	movhi	r1, #0x0
               	uxth	r1, r1
               	lsrs	r0, r1
               	pop	{r7, pc}

<safe_rshift_func_uint16_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r1, #0xf
               	it	hi
               	movhi	r1, #0x0
               	uxth	r1, r1
               	lsrs	r0, r1
               	pop	{r7, pc}

<safe_unary_minus_func_uint32_t_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	rsbs	r0, r0, #0
               	pop	{r7, pc}

<safe_add_func_uint32_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	add	r0, r1
               	pop	{r7, pc}

<safe_sub_func_uint32_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	subs	r0, r0, r1
               	pop	{r7, pc}

<safe_mul_func_uint32_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	muls	r0, r1, r0
               	pop	{r7, pc}

<safe_mod_func_uint32_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r1, #0x0
               	it	eq
               	popeq	{r7, pc}
               	udiv	r2, r0, r1
               	mls	r0, r2, r1, r0
               	pop	{r7, pc}

<safe_div_func_uint32_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r1, #0x0
               	it	ne
               	udivne	r0, r0, r1
               	pop	{r7, pc}
               	nop

<safe_lshift_func_uint32_t_u_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov.w	r2, #0xffffffff
               	lsrs	r2, r1
               	cmp	r0, r2
               	mov	r2, r1
               	it	hi
               	movhi	r2, #0x0
               	cmp	r1, #0x1f
               	it	hi
               	movhi	r2, #0x0
               	lsls	r0, r2
               	pop	{r7, pc}

<safe_lshift_func_uint32_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov.w	r2, #0xffffffff
               	lsrs	r2, r1
               	cmp	r0, r2
               	mov	r2, r1
               	it	hi
               	movhi	r2, #0x0
               	cmp	r1, #0x1f
               	it	hi
               	movhi	r2, #0x0
               	lsls	r0, r2
               	pop	{r7, pc}

<safe_rshift_func_uint32_t_u_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r1, #0x1f
               	it	hi
               	movhi	r1, #0x0
               	lsrs	r0, r1
               	pop	{r7, pc}
               	nop

<safe_rshift_func_uint32_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r1, #0x1f
               	it	hi
               	movhi	r1, #0x0
               	lsrs	r0, r1
               	pop	{r7, pc}
               	nop

<safe_unary_minus_func_uint64_t_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	rsbs	r0, r0, #0
               	mov.w	r2, #0x0
               	sbc.w	r1, r2, r1
               	pop	{r7, pc}

<safe_add_func_uint64_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	adds	r0, r0, r2
               	adcs	r1, r3
               	pop	{r7, pc}
               	nop

<safe_sub_func_uint64_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	subs	r0, r0, r2
               	sbcs	r1, r3
               	pop	{r7, pc}
               	nop

<safe_mul_func_uint64_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	umull	r12, lr, r2, r0
               	mla	r1, r2, r1, lr
               	mla	r1, r3, r0, r1
               	mov	r0, r12
               	pop	{r7, pc}

<safe_mod_func_uint64_t_u_u>:
               	orrs.w	r12, r2, r3
               	it	eq
               	bxeq	lr
               	push	{r7, lr}
               	mov	r7, sp
               	bl	0xa3c <safe_mod_func_uint64_t_u_u+0xc> @ imm = #-0x4
               	mov	r0, r2
               	mov	r1, r3
               	pop.w	{r7, lr}
               	bx	lr
               	nop

<safe_div_func_uint64_t_u_u>:
               	orrs.w	r12, r2, r3
               	it	eq
               	bxeq	lr
               	push	{r7, lr}
               	mov	r7, sp
               	bl	0xa58 <safe_div_func_uint64_t_u_u+0xc> @ imm = #-0x4
               	pop.w	{r7, lr}
               	bx	lr
               	nop

<safe_lshift_func_uint64_t_u_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	orrs.w	r3, r0, r1
               	mov	r3, r2
               	it	ne
               	movne	r3, #0x0
               	cmp	r2, #0x3f
               	it	hi
               	movhi	r3, #0x0
               	rsb.w	r2, r3, #0x20
               	lsls	r1, r3
               	lsr.w	r2, r0, r2
               	orrs	r1, r2
               	subs.w	r2, r3, #0x20
               	it	pl
               	lslpl.w	r1, r0, r2
               	lsl.w	r0, r0, r3
               	it	pl
               	movpl	r0, #0x0
               	pop	{r7, pc}

<safe_lshift_func_uint64_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	orrs.w	r3, r0, r1
               	mov	r3, r2
               	it	ne
               	movne	r3, #0x0
               	cmp	r2, #0x3f
               	it	hi
               	movhi	r3, #0x0
               	rsb.w	r2, r3, #0x20
               	lsls	r1, r3
               	lsr.w	r2, r0, r2
               	orrs	r1, r2
               	subs.w	r2, r3, #0x20
               	it	pl
               	lslpl.w	r1, r0, r2
               	lsl.w	r0, r0, r3
               	it	pl
               	movpl	r0, #0x0
               	pop	{r7, pc}

<safe_rshift_func_uint64_t_u_s>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r2, #0x3f
               	it	hi
               	movhi	r2, #0x0
               	rsb.w	r3, r2, #0x20
               	lsrs	r0, r2
               	lsl.w	r3, r1, r3
               	orrs	r0, r3
               	subs.w	r3, r2, #0x20
               	it	pl
               	lsrpl.w	r0, r1, r3
               	lsr.w	r1, r1, r2
               	it	pl
               	movpl	r1, #0x0
               	pop	{r7, pc}
               	nop

<safe_rshift_func_uint64_t_u_u>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r2, #0x3f
               	it	hi
               	movhi	r2, #0x0
               	rsb.w	r3, r2, #0x20
               	lsrs	r0, r2
               	lsl.w	r3, r1, r3
               	orrs	r0, r3
               	subs.w	r3, r2, #0x20
               	it	pl
               	lsrpl.w	r0, r1, r3
               	lsr.w	r1, r1, r2
               	it	pl
               	movpl	r1, #0x0
               	pop	{r7, pc}
               	nop

<func_1>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r0, #0x2
               	nop
               	movs	r1, #0x8
               	nop
               	subs	r1, #0x4
               	bne	0xb30 <func_1+0xc>      @ imm = #-0x6
               	adds	r0, #0x3
               	cmp	r0, #0x38
               	bne	0xb2c <func_1+0x8>      @ imm = #-0x10
               	movs	r0, #0x0
               	pop	{r7, pc}
               	nop

<main>:
               	push	{r7, lr}
               	mov	r7, sp
               	bl	0xb44 <main+0x4>        @ imm = #-0x4
               	bl	0xb48 <main+0x8>        @ imm = #-0x4
               	movs	r0, #0x2
               	nop
               	movs	r1, #0x8
               	nop
               	subs	r1, #0x4
               	bne	0xb54 <main+0x14>       @ imm = #-0x6
               	adds	r0, #0x3
               	cmp	r0, #0x38
               	bne	0xb50 <main+0x10>       @ imm = #-0x10
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldm	r0, {r0, r1}
               	movs	r2, #0x0
               	mvns	r0, r0
               	bl	0xb6c <main+0x2c>       @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r7, pc}
