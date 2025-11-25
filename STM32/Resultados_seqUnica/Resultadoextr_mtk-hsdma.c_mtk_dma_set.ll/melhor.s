
/tmp/tmp.fsvVavXtcr/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mtk_hsdma_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mtk_dma_set>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r3, r2
               	movs	r2, #0x0
               	pop.w	{r7, lr}
               	b.w	0x18 <mtk_dma_set+0xc>  @ imm = #-0x4
