
/tmp/tmp.ZRMhpjtf0V/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ef4_channel:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ef4_nic_event_present>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r1, [r0]
               	bl	0x12 <ef4_nic_event_present+0x6> @ imm = #-0x4
               	pop.w	{r7, lr}
               	b.w	0x1a <ef4_nic_event_present+0xe> @ imm = #-0x4
