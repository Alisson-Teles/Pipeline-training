
/tmp/tmp.61CavBHMRQ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<__mpa_rr_revision>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	ands	r0, r1
               	pop.w	{r7, lr}
               	b.w	0x14 <__mpa_rr_revision+0x14> @ imm = #-0x4
