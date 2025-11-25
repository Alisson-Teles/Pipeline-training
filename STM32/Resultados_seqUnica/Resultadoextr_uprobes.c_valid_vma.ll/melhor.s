
/tmp/tmp.iP50W2xhyA/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<vm_area_struct:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0, #8]
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<valid_vma>:
               	ldrd	r2, r3, [r0, #8]
               	orrs	r2, r3
               	itt	eq
               	moveq	r0, #0x0
               	bxeq	lr
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r3, #0x0
               	movt	r3, #0x0
               	ldr.w	r12, [r3]
               	movw	r3, #0x0
               	movt	r3, #0x0
               	movw	r2, #0x0
               	ldr.w	lr, [r3]
               	movw	r3, #0x0
               	movt	r2, #0x0
               	movt	r3, #0x0
               	ldr	r2, [r2]
               	ldr	r4, [r3]
               	orr.w	r3, r12, lr
               	cmp	r1, #0x0
               	it	ne
               	orrne	r3, r4
               	ldr	r0, [r0]
               	orr.w	r1, r3, r2
               	ands	r0, r1
               	subs	r0, r0, r2
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	pop	{r4, r6, r7, pc}
