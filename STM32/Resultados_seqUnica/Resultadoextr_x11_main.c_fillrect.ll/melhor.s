
/tmp/tmp.fSm0RnulTg/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<fillrect>:
               	cmp	r2, #0x1
               	it	ge
               	cmpge	r3, #0x1
               	bge	0xa <fillrect+0xa>      @ imm = #0x0
               	bx	lr
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x10
               	movw	r4, #0x0
               	mov	r12, r1
               	mov	lr, r0
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r4, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldr	r4, [r4]
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	strd	r2, r3, [sp, #4]
               	mov	r2, r4
               	mov	r3, lr
               	str.w	r12, [sp]
               	bl	0x3e <fillrect+0x3e>    @ imm = #-0x4
               	add	sp, #0x10
               	pop	{r4, r6, r7, pc}
