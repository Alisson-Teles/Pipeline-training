
/tmp/tmp.EBU741smSS/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<net_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<igb_open>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	pop.w	{r7, lr}
               	b.w	0x16 <igb_open+0xa>     @ imm = #-0x4
