
/tmp/tmp.OGzeSmAKqS/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<amvdec_core:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<amvdec_read_parser>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldm	r0, {r0, r1}
               	adds	r0, r0, r2
               	adcs	r1, r3
               	pop.w	{r7, lr}
               	b.w	0x1a <amvdec_read_parser+0xe> @ imm = #-0x4
