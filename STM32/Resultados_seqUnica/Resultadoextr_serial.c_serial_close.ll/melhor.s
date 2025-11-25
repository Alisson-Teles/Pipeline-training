
/tmp/tmp.V1iWjucodM/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<serial:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<serial_close>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x1
               	pop.w	{r7, lr}
               	b.w	0x16 <serial_close+0xa> @ imm = #-0x4
