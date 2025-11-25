
/tmp/tmp.BDGHiVv8Ji/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<nilfs_btree_node:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<nilfs_btree_node_set_nchildren>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	mov	r0, r1
               	bl	0x14 <nilfs_btree_node_set_nchildren+0x8> @ imm = #-0x4
               	str	r0, [r4]
               	pop	{r4, r6, r7, pc}
