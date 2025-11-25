
/tmp/tmp.Ty6b0dPr5T/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<hda_codec:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<alc_pre_init>:
               	push	{r7, lr}
               	mov	r7, sp
               	pop.w	{r7, lr}
               	b.w	0x14 <alc_pre_init+0x8> @ imm = #-0x4
