
/tmp/tmp.WIoZUweBz0/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<pp_hwmgr:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<smu8_send_msg_to_smc>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r2, #0x0
               	pop.w	{r7, lr}
               	b.w	0x16 <smu8_send_msg_to_smc+0xa> @ imm = #-0x4
