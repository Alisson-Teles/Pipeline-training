
/tmp/tmp.8pT7aHbzRC/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<darray:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<darray_insert_darray>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	ldrd	r12, r3, [r3]
               	str.w	r12, [sp]
               	bl	0x1a <darray_insert_darray+0xe> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
