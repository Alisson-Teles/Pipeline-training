
/tmp/tmp.bn2lkUtyrj/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ieee80211_channel:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ath_hal:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ar9300_init_bb>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r5, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r4, r0
               	bl	0x2e <ar9300_init_bb+0x16> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	and.w	r6, r1, r0
               	mov	r0, r5
               	bl	0x42 <ar9300_init_bb+0x2a> @ imm = #-0x4
               	movw	r3, #0xa2e9
               	lsls	r2, r6, #0x2
               	movt	r3, #0x2e8b
               	smull	r2, r3, r2, r3
               	orrs	r0, r1
               	movw	r2, #0x6667
               	movw	r0, #0x0
               	movt	r2, #0x6666
               	movt	r0, #0x0
               	smull	r2, r6, r6, r2
               	ldr	r1, [r0]
               	movw	r0, #0x0
               	asr.w	r2, r3, #0x2
               	movt	r0, #0x0
               	add.w	r5, r2, r3, lsr #31
               	ldr	r2, [r0]
               	mov	r0, r4
               	asr.w	r3, r6, #0x2
               	it	eq
               	addeq.w	r5, r3, r6, lsr #31
               	bl	0x8a <ar9300_init_bb+0x72> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldm	r0, {r0, r1}
               	adds	r0, r0, r5
               	adc.w	r1, r1, r5, asr #31
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0xa6 <ar9300_init_bb+0x8e> @ imm = #-0x4
