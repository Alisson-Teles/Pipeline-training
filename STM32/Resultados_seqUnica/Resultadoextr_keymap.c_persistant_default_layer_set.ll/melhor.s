
/tmp/tmp.HfUsqnDcIN/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<persistant_default_layer_set>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x6 <persistant_default_layer_set+0x6> @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x10 <persistant_default_layer_set+0x10> @ imm = #-0x4
