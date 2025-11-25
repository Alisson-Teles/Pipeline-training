
/tmp/tmp.t4AVYJNRtD/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<audio_in:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}
               	nop

<audio_enable_agc>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r2, [r0]
               	cmp	r2, r1
               	it	eq
               	popeq	{r7, pc}
               	ldrd	r2, r3, [r0, #8]
               	str	r1, [r0]
               	orrs	r2, r3
               	beq	0x2e <audio_enable_agc+0x1e> @ imm = #0x6
               	pop.w	{r7, lr}
               	b.w	0x2a <audio_enable_agc+0x1a> @ imm = #-0x4
               	pop	{r7, pc}
