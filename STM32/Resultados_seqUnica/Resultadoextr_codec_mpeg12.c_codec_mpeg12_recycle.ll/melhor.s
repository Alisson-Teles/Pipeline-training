
/tmp/tmp.14uFpKSDms/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<amvdec_core:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<codec_mpeg12_recycle>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	adds	r2, #0x1
               	adc	r3, r3, #0x0
               	pop.w	{r7, lr}
               	b.w	0x24 <codec_mpeg12_recycle+0x18> @ imm = #-0x4
