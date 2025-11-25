
/tmp/tmp.ktvZMglGlG/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<EVP_MD_meth_set_result_size>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r2, [r0]
               	cmp	r2, #0x0
               	itee	ne
               	movne	r0, #0x0
               	streq	r1, [r0]
               	moveq	r0, #0x1
               	pop	{r7, pc}
