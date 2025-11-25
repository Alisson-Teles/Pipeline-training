
/tmp/tmp.CTmCnlbVXz/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<thread:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<linux_msync_args:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<linux_msync>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r3, #0x0
               	movt	r3, #0x0
               	ldrd	r12, r2, [r1]
               	ldr	r3, [r3]
               	ldr	r1, [r1, #0x8]
               	bic.w	r3, r12, r3
               	pop.w	{r7, lr}
               	b.w	0x38 <linux_msync+0x1c> @ imm = #-0x4
