
/tmp/tmp.72SPSJ6UZB/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<DSA_set_flags>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r2, [r0]
               	orrs	r1, r2
               	str	r1, [r0]
               	pop	{r7, pc}
