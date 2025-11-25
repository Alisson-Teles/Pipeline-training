
/tmp/tmp.KfjKWtjf36/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<map_groups:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<_unwind__finish_access>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	pop.w	{r7, lr}
               	b.w	0x16 <_unwind__finish_access+0xa> @ imm = #-0x4
