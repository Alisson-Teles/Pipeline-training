
/tmp/tmp.G0u9hUtrxr/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<qed_cyclic_add>:
               	push	{r7, lr}
               	mov	r7, sp
               	add	r0, r1
               	sdiv	r1, r0, r2
               	mls	r0, r1, r2, r0
               	pop	{r7, pc}
