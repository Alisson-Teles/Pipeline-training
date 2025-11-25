
/tmp/tmp.oMRTk5pq7r/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<tipc_msg:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<msg_user>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	movs	r2, #0x19
               	movs	r3, #0xf
               	pop.w	{r7, lr}
               	b.w	0x1a <msg_user+0xe>     @ imm = #-0x4
