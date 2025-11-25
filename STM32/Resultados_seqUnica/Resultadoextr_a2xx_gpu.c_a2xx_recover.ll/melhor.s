
/tmp/tmp.q4oUdtJCfr/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<msm_gpu:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<a2xx_recover>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r11}
               	sub	sp, #0x8
               	mov	r4, r0
               	bl	0x18 <a2xx_recover+0xc> @ imm = #-0x4
               	movw	r6, #0x0
               	movt	r6, #0x0
               	ldrd	r2, r3, [r6]
               	mov	r0, r4
               	bl	0x2a <a2xx_recover+0x1e> @ imm = #-0x4
               	movw	r5, #0x0
               	movt	r5, #0x0
               	mov	r2, r0
               	mov	r0, r5
               	movs	r1, #0x0
               	movs	r3, #0x15
               	mov.w	r8, #0x0
               	bl	0x42 <a2xx_recover+0x36> @ imm = #-0x4
               	ldrd	r0, r1, [r6]
               	adds	r2, r0, #0x1
               	adc	r3, r1, #0x0
               	mov	r0, r4
               	bl	0x52 <a2xx_recover+0x46> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r5
               	movs	r1, #0x1
               	movs	r3, #0x15
               	mov.w	r9, #0x1
               	bl	0x62 <a2xx_recover+0x56> @ imm = #-0x4
               	ldrd	r0, r1, [r6]
               	adds	r2, r0, #0x2
               	adc	r3, r1, #0x0
               	mov	r0, r4
               	bl	0x72 <a2xx_recover+0x66> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r5
               	movs	r1, #0x2
               	movs	r3, #0x15
               	bl	0x7e <a2xx_recover+0x72> @ imm = #-0x4
               	ldrd	r0, r1, [r6]
               	adds	r2, r0, #0x3
               	adc	r3, r1, #0x0
               	mov	r0, r4
               	bl	0x8e <a2xx_recover+0x82> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r5
               	movs	r1, #0x3
               	movs	r3, #0x15
               	bl	0x9a <a2xx_recover+0x8e> @ imm = #-0x4
               	ldrd	r0, r1, [r6]
               	adds	r2, r0, #0x4
               	adc	r3, r1, #0x0
               	mov	r0, r4
               	bl	0xaa <a2xx_recover+0x9e> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r5
               	movs	r1, #0x4
               	movs	r3, #0x15
               	bl	0xb6 <a2xx_recover+0xaa> @ imm = #-0x4
               	ldrd	r0, r1, [r6]
               	adds	r2, r0, #0x5
               	adc	r3, r1, #0x0
               	mov	r0, r4
               	bl	0xc6 <a2xx_recover+0xba> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r5
               	movs	r1, #0x5
               	movs	r3, #0x15
               	bl	0xd2 <a2xx_recover+0xc6> @ imm = #-0x4
               	ldrd	r0, r1, [r6]
               	adds	r2, r0, #0x6
               	adc	r3, r1, #0x0
               	mov	r0, r4
               	bl	0xe2 <a2xx_recover+0xd6> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r5
               	movs	r1, #0x6
               	movs	r3, #0x15
               	bl	0xee <a2xx_recover+0xe2> @ imm = #-0x4
               	ldrd	r0, r1, [r6]
               	adds	r2, r0, #0x7
               	adc	r3, r1, #0x0
               	mov	r0, r4
               	bl	0xfe <a2xx_recover+0xf2> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r5
               	movs	r1, #0x7
               	movs	r3, #0x15
               	bl	0x10a <a2xx_recover+0xfe> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldm	r0, {r0, r1}
               	orrs	r0, r1
               	beq	0x122 <a2xx_recover+0x116> @ imm = #0x4
               	mov	r0, r4
               	bl	0x11e <a2xx_recover+0x112> @ imm = #-0x4
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldrd	r2, r3, [r5]
               	mov	r0, r4
               	str.w	r9, [sp]
               	bl	0x134 <a2xx_recover+0x128> @ imm = #-0x4
               	ldrd	r2, r3, [r5]
               	mov	r0, r4
               	bl	0x13e <a2xx_recover+0x132> @ imm = #-0x4
               	ldrd	r2, r3, [r5]
               	mov	r0, r4
               	str.w	r8, [sp]
               	bl	0x14c <a2xx_recover+0x140> @ imm = #-0x4
               	mov	r0, r4
               	add	sp, #0x8
               	pop.w	{r8, r9, r11}
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x15c <a2xx_recover+0x150> @ imm = #-0x4
