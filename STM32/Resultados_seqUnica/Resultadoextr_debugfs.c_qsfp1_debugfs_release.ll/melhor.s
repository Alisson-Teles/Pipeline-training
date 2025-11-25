
/tmp/tmp.D9yqwzbvrP/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<inode:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<file:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<qsfp1_debugfs_release>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r2, #0x0
               	pop.w	{r7, lr}
               	b.w	0x22 <qsfp1_debugfs_release+0xa> @ imm = #-0x4
