
/tmp/tmp.VoXS0FMUcg/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<bwn_mac:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<bwn_radio_2057_init>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <bwn_radio_2057_init+0x6> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x18 <bwn_radio_2057_init+0xc> @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x22 <bwn_radio_2057_init+0x16> @ imm = #-0x4
