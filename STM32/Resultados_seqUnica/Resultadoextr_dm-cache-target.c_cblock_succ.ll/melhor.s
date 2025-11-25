
/tmp/tmp.12o4RhJPMR/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<cblock_succ>:
               	push	{r7, lr}
               	mov	r7, sp
               	bl	0x4 <cblock_succ+0x4>   @ imm = #-0x4
               	adds	r0, #0x1
               	adc	r1, r1, #0x0
               	pop.w	{r7, lr}
               	b.w	0x12 <cblock_succ+0x12> @ imm = #-0x4
