
/tmp/tmp.g6913sN0sR/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<net_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<eip_set_multicast_list>:
               	push	{r7, lr}
               	mov	r7, sp
               	pop.w	{r7, lr}
               	b.w	0x14 <eip_set_multicast_list+0x8> @ imm = #-0x4
