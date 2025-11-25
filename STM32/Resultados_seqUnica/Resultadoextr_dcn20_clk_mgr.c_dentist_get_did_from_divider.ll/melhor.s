
/tmp/tmp.6ocQybUrIa/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<dentist_get_did_from_divider>:
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r2, r0
               	cmp	r0, r1
               	bge	0x40 <dentist_get_did_from_divider+0x40> @ imm = #0x2e
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r3, [r0]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldm	r0, {r0, r1}
               	subs	r2, r2, r3
               	it	lt
               	bxlt	lr
               	movw	r3, #0x0
               	movt	r3, #0x0
               	ldr	r3, [r3]
               	sdiv	r2, r2, r3
               	adds	r0, r0, r2
               	adc.w	r1, r1, r2, asr #31
               	bx	lr
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	cmp	r2, r0
               	bge	0x70 <dentist_get_did_from_divider+0x70> @ imm = #0x20
               	subs	r1, r2, r1
               	movw	r2, #0x0
               	movt	r2, #0x0
               	movw	r0, #0x0
               	ldr	r2, [r2]
               	movt	r0, #0x0
               	ldm	r0, {r0, r3}
               	sdiv	r1, r1, r2
               	adds	r0, r0, r1
               	adc.w	r1, r3, r1, asr #31
               	bx	lr
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	cmp	r2, r1
               	bge	0xa0 <dentist_get_did_from_divider+0xa0> @ imm = #0x20
               	subs	r0, r2, r0
               	movw	r2, #0x0
               	movt	r2, #0x0
               	movw	r1, #0x0
               	ldr	r2, [r2]
               	movt	r1, #0x0
               	ldm	r1, {r1, r3}
               	sdiv	r2, r0, r2
               	adds	r0, r1, r2
               	adc.w	r1, r3, r2, asr #31
               	bx	lr
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r3, #0x0
               	movt	r3, #0x0
               	movw	r0, #0x0
               	ldr	r3, [r3]
               	movt	r0, #0x0
               	subs	r1, r2, r1
               	ldm.w	r0, {r0, r12}
               	sdiv	r2, r1, r3
               	adds.w	lr, r0, r2
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldm	r0, {r0, r1}
               	adc.w	r2, r12, r2, asr #31
               	subs.w	r3, lr, r0
               	sbcs.w	r3, r2, r1
               	itt	lt
               	movlt	r1, r2
               	movlt	r0, lr
               	pop	{r7, pc}
