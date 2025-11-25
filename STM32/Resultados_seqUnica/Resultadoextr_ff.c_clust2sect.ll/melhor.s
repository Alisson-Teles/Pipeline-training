
/tmp/tmp.C8GdfIKlAH/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<clust2sect>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r2, [r0]
               	subs	r1, #0x2
               	subs	r2, #0x2
               	cmp	r1, r2
               	itt	ge
               	movge	r0, #0x0
               	popge	{r7, pc}
               	ldr	r2, [r0, #0x8]
               	ldr	r0, [r0, #0x4]
               	mla	r0, r0, r1, r2
               	pop	{r7, pc}
