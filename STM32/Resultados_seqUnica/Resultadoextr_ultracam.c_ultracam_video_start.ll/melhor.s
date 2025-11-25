
/tmp/tmp.nDGClmmnCY/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<uvd:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ultracam_video_start>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	pop.w	{r7, lr}
               	b.w	0x16 <ultracam_video_start+0xa> @ imm = #-0x4
