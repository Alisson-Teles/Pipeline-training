
/tmp/tmp.dO05BgLs6J/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<gfs2_inode:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<gfs2_is_stuffed>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	pop	{r7, pc}
