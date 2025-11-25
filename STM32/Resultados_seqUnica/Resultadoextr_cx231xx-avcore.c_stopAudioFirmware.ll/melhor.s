
/tmp/tmp.EwamhuUQjv/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<cx231xx:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<stopAudioFirmware>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	movs	r2, #0x3
               	pop.w	{r7, lr}
               	b.w	0x20 <stopAudioFirmware+0x14> @ imm = #-0x4
