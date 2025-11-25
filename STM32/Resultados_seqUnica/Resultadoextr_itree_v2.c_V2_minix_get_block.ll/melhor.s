
/tmp/tmp.1W6Nr3OcWO/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<inode:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<buffer_head:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<V2_minix_get_block>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldrd	r1, r12, [r7, #8]
               	strd	r1, r12, [r7, #8]
               	pop.w	{r7, lr}
               	b.w	0x28 <V2_minix_get_block+0x10> @ imm = #-0x4
