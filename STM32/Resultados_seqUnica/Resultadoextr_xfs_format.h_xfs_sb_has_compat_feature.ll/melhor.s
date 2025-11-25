
/tmp/tmp.8zZkuNZeB7/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<xfs_sb:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<xfs_sb_has_compat_feature>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	ands	r0, r1
               	it	ne
               	movne	r0, #0x1
               	pop	{r7, pc}
