
/tmp/tmp.BfhEURoyHK/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<InfGetBinaryField>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	ldr.w	r12, [r7, #0x8]
               	str.w	r12, [sp]
               	bl	0xe <InfGetBinaryField+0xe> @ imm = #-0x4
               	add	sp, #0x8
               	pop.w	{r7, lr}
               	b.w	0x18 <InfGetBinaryField+0x18> @ imm = #-0x4
