
/tmp/tmp.bOwQwrxVlH/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<cacheinfo:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<cache_leaves_are_shared>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	subs	r0, #0x1
               	it	ne
               	movne	r0, #0x1
               	pop	{r7, pc}
