
/tmp/tmp.2U3GIxlqFm/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<snd_cmi8328_cfg_read>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r11}
               	adds	r4, r0, #0x3
               	adc	r5, r1, #0x0
               	mov	r8, r2
               	mov	r6, r0
               	movs	r0, #0x43
               	mov	r2, r4
               	mov	r3, r5
               	mov	r9, r1
               	bl	0x1a <snd_cmi8328_cfg_read+0x1a> @ imm = #-0x4
               	movs	r0, #0x21
               	mov	r2, r4
               	mov	r3, r5
               	bl	0x24 <snd_cmi8328_cfg_read+0x24> @ imm = #-0x4
               	mov	r0, r8
               	mov	r2, r4
               	mov	r3, r5
               	bl	0x2e <snd_cmi8328_cfg_read+0x2e> @ imm = #-0x4
               	mov	r0, r6
               	mov	r1, r9
               	pop.w	{r8, r9, r11}
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x3e <snd_cmi8328_cfg_read+0x3e> @ imm = #-0x4
