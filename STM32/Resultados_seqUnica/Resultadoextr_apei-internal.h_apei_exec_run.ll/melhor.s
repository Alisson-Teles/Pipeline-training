
/tmp/tmp.FbHbvEuuvQ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<apei_exec_context:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<apei_exec_run>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r2, #0x0
               	pop.w	{r7, lr}
               	b.w	0x16 <apei_exec_run+0xa> @ imm = #-0x4
