
/tmp/tmp.KVSAu9ZotQ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<snd_i2c_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<snd_tea6330_free>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	pop.w	{r7, lr}
               	b.w	0x16 <snd_tea6330_free+0xa> @ imm = #-0x4
