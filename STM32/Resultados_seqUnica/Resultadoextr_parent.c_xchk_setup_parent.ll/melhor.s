
/tmp/tmp.zyRk4YpqMr/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<xfs_scrub:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<xfs_inode:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<xchk_setup_parent>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r2, #0x0
               	pop.w	{r7, lr}
               	b.w	0x22 <xchk_setup_parent+0xa> @ imm = #-0x4
