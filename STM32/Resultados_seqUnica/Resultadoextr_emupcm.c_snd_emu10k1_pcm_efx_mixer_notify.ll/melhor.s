
/tmp/tmp.VGJoLvGD7C/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<snd_emu10k1:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<snd_emu10k1_pcm_efx_mixer_notify>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r4, r2
               	ldr	r2, [r0, #0x8]
               	mov	r6, r1
               	mov	r1, r2
               	mov	r2, r6
               	mov	r3, r4
               	mov	r5, r0
               	bl	0x26 <snd_emu10k1_pcm_efx_mixer_notify+0x16> @ imm = #-0x4
               	ldr	r1, [r5, #0x4]
               	mov	r0, r5
               	mov	r2, r6
               	mov	r3, r4
               	bl	0x32 <snd_emu10k1_pcm_efx_mixer_notify+0x22> @ imm = #-0x4
               	ldr	r1, [r5]
               	mov	r0, r5
               	mov	r2, r6
               	mov	r3, r4
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x46 <snd_emu10k1_pcm_efx_mixer_notify+0x36> @ imm = #-0x4
