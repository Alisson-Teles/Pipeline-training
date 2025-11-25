
/tmp/tmp.Y7U7Xqh11l/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<inode:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<qnx6_free_inode>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r4, [r1]
               	bl	0x1a <qnx6_free_inode+0xe> @ imm = #-0x4
               	mov	r1, r0
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x26 <qnx6_free_inode+0x1a> @ imm = #-0x4
