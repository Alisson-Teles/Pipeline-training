
/tmp/tmp.PF2ttH87hj/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<regw>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r12, #0x0
               	movt	r12, #0x0
               	ldm.w	r12, {r12, lr}
               	adds.w	r2, r2, r12
               	adc.w	r3, r3, lr
               	pop.w	{r7, lr}
               	b.w	0x1c <regw+0x1c>        @ imm = #-0x4
