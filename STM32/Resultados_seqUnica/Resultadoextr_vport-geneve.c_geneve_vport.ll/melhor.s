
/tmp/tmp.nS9kmyvemS/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<vport:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<geneve_port:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<geneve_vport>:
               	push	{r7, lr}
               	mov	r7, sp
               	pop.w	{r7, lr}
               	b.w	0x20 <geneve_vport+0x8> @ imm = #-0x4
