
/tmp/tmp.wV5gkfQDat/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<radeon_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<rv6xx_enable_engine_spread_spectrum>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldm.w	r0, {r0, r12}
               	lsls	r3, r1, #0x2
               	adds.w	r0, r0, r1, lsl #2
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr.w	lr, [r1]
               	adc.w	r1, r12, r3, asr #31
               	mvn.w	r3, lr
               	cmp	r2, #0x0
               	it	ne
               	movne	r2, lr
               	pop.w	{r7, lr}
               	b.w	0x40 <rv6xx_enable_engine_spread_spectrum+0x34> @ imm = #-0x4
