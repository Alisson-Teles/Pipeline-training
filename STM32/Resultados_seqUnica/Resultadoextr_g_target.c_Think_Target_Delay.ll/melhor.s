
/tmp/tmp.rqCoqGFPRp/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_4__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<Think_Target_Delay>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r1, [r0]
               	pop.w	{r7, lr}
               	b.w	0x16 <Think_Target_Delay+0xa> @ imm = #-0x4
