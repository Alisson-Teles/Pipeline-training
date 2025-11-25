
/tmp/tmp.mXVeaI7fH9/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<hist_trigger_data:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<action_data:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<onmatch_create>:
               	push	{r7, lr}
               	mov	r7, sp
               	pop.w	{r7, lr}
               	b.w	0x20 <onmatch_create+0x8> @ imm = #-0x4
