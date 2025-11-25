
/tmp/tmp.53Z175Xgu6/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<sane_layout>:
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	tst	r1, r0
               	itt	eq
               	moveq	r0, #0x0
               	bxeq	lr
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	orrs	r0, r1
               	ands	r0, r4
               	bl	0x30 <sane_layout+0x30> @ imm = #-0x4
               	cmp	r0, #0x0
               	beq	0xb8 <sane_layout+0xb8> @ imm = #0x7e
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	orrs	r0, r1
               	ands	r0, r4
               	bl	0x50 <sane_layout+0x50> @ imm = #-0x4
               	cbz	r0, 0xb8 <sane_layout+0xb8> @ imm = #0x60
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	orrs	r0, r1
               	ands	r0, r4
               	bl	0x6e <sane_layout+0x6e> @ imm = #-0x4
               	cbz	r0, 0xb8 <sane_layout+0xb8> @ imm = #0x42
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	orrs	r0, r1
               	ands	r0, r4
               	bl	0x8c <sane_layout+0x8c> @ imm = #-0x4
               	cmp	r0, #0x0
               	mov.w	r0, #0x0
               	it	eq
               	popeq	{r4, r6, r7, pc}
               	mov	r0, r4
               	bl	0x9c <sane_layout+0x9c> @ imm = #-0x4
               	movw	r3, #0x0
               	movt	r3, #0x0
               	ldm	r3, {r3, r4}
               	mov	r2, r0
               	movs	r0, #0x0
               	subs	r2, r2, r3
               	sbcs	r1, r4
               	it	lt
               	movlt	r0, #0x1
               	pop	{r4, r6, r7, pc}
               	movs	r0, #0x0
               	pop	{r4, r6, r7, pc}
