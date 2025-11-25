
/tmp/tmp.xaNoM65BFc/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<snd_pcm_substream:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<snd_pmac_pcm_hw_free>:
               	push	{r7, lr}
               	mov	r7, sp
               	bl	0x10 <snd_pmac_pcm_hw_free+0x4> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r7, pc}
