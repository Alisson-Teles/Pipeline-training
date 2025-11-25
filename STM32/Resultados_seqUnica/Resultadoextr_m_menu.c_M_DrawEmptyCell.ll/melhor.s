
/tmp/tmp.h5DOO1WhgR/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<M_DrawEmptyCell>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r11}
               	sub	sp, #0x8
               	ldm.w	r0, {r2, r3, r6}
               	subs.w	r8, r6, #0xa
               	movw	r6, #0x0
               	movt	r6, #0x0
               	ldr	r0, [r0, #0xc]
               	ldr	r6, [r6]
               	sbc	r9, r0, #0x0
               	mul	r0, r6, r1
               	adds	r1, r2, r0
               	adc.w	r0, r3, r0, asr #31
               	subs	r6, r1, #0x1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	sbc	r4, r0, #0x0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movs	r2, #0x7
               	bl	0x56 <M_DrawEmptyCell+0x46> @ imm = #-0x4
               	mov	r5, r0
               	mov.w	r12, #0x0
               	mov	r0, r8
               	mov	r1, r9
               	mov	r2, r6
               	mov	r3, r4
               	strd	r12, r5, [sp]
               	bl	0x6c <M_DrawEmptyCell+0x5c> @ imm = #-0x4
               	add	sp, #0x8
               	pop.w	{r8, r9, r11}
               	pop	{r4, r5, r6, r7, pc}
