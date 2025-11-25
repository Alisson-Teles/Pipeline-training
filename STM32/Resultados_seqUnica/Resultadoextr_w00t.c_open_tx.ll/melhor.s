
/tmp/tmp.p34cPu1Rx4/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<open_tx>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r2, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	pop.w	{r7, lr}
               	b.w	0x14 <open_tx+0x14>     @ imm = #-0x4
