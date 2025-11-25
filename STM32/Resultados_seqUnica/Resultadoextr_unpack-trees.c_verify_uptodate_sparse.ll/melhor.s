
/tmp/tmp.dgjYUua986/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<unpack_trees_options:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<cache_entry:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<verify_uptodate_sparse>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	pop.w	{r7, lr}
               	b.w	0x2a <verify_uptodate_sparse+0x12> @ imm = #-0x4
