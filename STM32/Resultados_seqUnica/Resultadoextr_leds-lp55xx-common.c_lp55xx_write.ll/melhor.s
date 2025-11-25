
/tmp/tmp.LDeNGMVTBX/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<lp55xx_chip:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<lp55xx_write>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	pop.w	{r7, lr}
               	b.w	0x16 <lp55xx_write+0xa> @ imm = #-0x4
