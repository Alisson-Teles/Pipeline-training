
/tmp/tmp.V4V0XIrA9a/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<bh1770_chip:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<bh1770_get_corr_value>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	ldrd	r2, r3, [r0]
               	ldr	r0, [r0, #0x8]
               	muls	r1, r2, r1
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	sdiv	r1, r1, r2
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	muls	r1, r3, r1
               	sdiv	r1, r1, r2
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	muls	r0, r1, r0
               	sdiv	r0, r0, r2
               	pop	{r7, pc}
