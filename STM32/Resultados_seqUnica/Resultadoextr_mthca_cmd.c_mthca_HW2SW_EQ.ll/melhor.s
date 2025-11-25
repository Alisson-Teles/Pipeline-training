
/tmp/tmp.Bvzv5LqQDf/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mthca_mailbox:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mthca_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mthca_HW2SW_EQ>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x10
               	mov	r12, r2
               	ldr	r2, [r1]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movw	r3, #0x0
               	ldr	r1, [r1]
               	movt	r3, #0x0
               	ldr.w	lr, [r3]
               	movs	r3, #0x0
               	strd	r3, r1, [sp]
               	movs	r1, #0x0
               	mov	r3, r12
               	str.w	lr, [sp, #0x8]
               	bl	0x46 <mthca_HW2SW_EQ+0x2e> @ imm = #-0x4
               	add	sp, #0x10
               	pop	{r7, pc}
