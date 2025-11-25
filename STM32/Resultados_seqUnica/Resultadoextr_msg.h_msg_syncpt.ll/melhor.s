
/tmp/tmp.oHBITuzZ6g/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<tipc_msg:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<msg_syncpt>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x9
               	movs	r2, #0x10
               	movw	r3, #0xffff
               	pop.w	{r7, lr}
               	b.w	0x1c <msg_syncpt+0x10>  @ imm = #-0x4
