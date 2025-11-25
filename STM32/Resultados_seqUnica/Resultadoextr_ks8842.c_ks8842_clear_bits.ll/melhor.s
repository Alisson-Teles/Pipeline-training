
/tmp/tmp.HMkytszC60/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ks8842_adapter:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<ks8842_clear_bits>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r4, r3
               	mov	r5, r2
               	mov	r6, r0
               	bl	0x1a <ks8842_clear_bits+0xe> @ imm = #-0x4
               	ldrd	r0, r1, [r6]
               	adds	r0, r0, r4
               	adc.w	r1, r1, r4, asr #31
               	bl	0x28 <ks8842_clear_bits+0x1c> @ imm = #-0x4
               	ldrd	r1, r3, [r6]
               	bics	r0, r5
               	adds	r2, r1, r4
               	adc.w	r3, r3, r4, asr #31
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x40 <ks8842_clear_bits+0x34> @ imm = #-0x4
