
/tmp/tmp.5Jht1bVuC3/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<inode:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<sysv_sync_inode>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x1
               	pop.w	{r7, lr}
               	b.w	0x16 <sysv_sync_inode+0xa> @ imm = #-0x4
