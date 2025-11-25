
/tmp/tmp.IIplXPuiBJ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<rpmsg_channel_info:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<rpmsg_find_device>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	pop.w	{r7, lr}
               	b.w	0x2a <rpmsg_find_device+0x12> @ imm = #-0x4
