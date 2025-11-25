
/tmp/tmp.PEs6rszogh/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mvs_info:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mvs_tag_free>:
               	push	{r7, lr}
               	mov	r7, sp
               	pop.w	{r7, lr}
               	b.w	0x14 <mvs_tag_free+0x8> @ imm = #-0x4
