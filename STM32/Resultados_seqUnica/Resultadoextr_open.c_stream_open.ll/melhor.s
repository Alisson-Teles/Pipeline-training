
/tmp/tmp.IbcY2231nz/saida.o:	file format elf32-littlearm

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

<stream_open>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movw	r2, #0x0
               	movt	r0, #0x0
               	movt	r2, #0x0
               	ldr	r0, [r0]
               	ldr	r2, [r2]
               	movw	r3, #0x0
               	movt	r3, #0x0
               	orrs	r0, r2
               	movw	r2, #0x0
               	ldr	r3, [r3]
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	orrs	r0, r3
               	ldr	r3, [r1]
               	orrs	r0, r2
               	bic.w	r0, r3, r0
               	movw	r2, #0x0
               	str	r0, [r1]
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	orrs	r2, r0
               	movs	r0, #0x0
               	str	r2, [r1]
               	pop	{r7, pc}
