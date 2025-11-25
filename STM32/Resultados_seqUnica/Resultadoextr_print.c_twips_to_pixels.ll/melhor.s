
/tmp/tmp.PHDlw6ElF0/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<twips_to_pixels>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	pop.w	{r7, lr}
               	b.w	0x12 <twips_to_pixels+0x12> @ imm = #-0x4
