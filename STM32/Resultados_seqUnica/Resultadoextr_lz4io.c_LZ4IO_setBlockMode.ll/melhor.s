
/tmp/tmp.Z7Khn9D0cS/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<LZ4IO_setBlockMode>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r12, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldm	r0, {r0, r1}
               	eors	r1, r3
               	eors	r0, r2
               	orrs	r0, r1
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	str.w	r0, [r12]
               	pop	{r7, pc}
