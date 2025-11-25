
/tmp/tmp.ynHifzbMz7/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<svn_depth_from_word>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r4, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r2, r4
               	movs	r3, #0x7
               	mov	r5, r0
               	bl	0x18 <svn_depth_from_word+0x18> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0xa2 <svn_depth_from_word+0xa2> @ imm = #0x80
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r5
               	mov	r2, r4
               	movs	r3, #0x7
               	bl	0x2e <svn_depth_from_word+0x2e> @ imm = #-0x4
               	movw	r6, #0x0
               	orrs	r0, r1
               	movt	r6, #0x0
               	beq	0xc8 <svn_depth_from_word+0xc8> @ imm = #0x88
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r5
               	mov	r2, r4
               	movs	r3, #0x5
               	bl	0x4c <svn_depth_from_word+0x4c> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0xac <svn_depth_from_word+0xac> @ imm = #0x56
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r5
               	mov	r2, r4
               	movs	r3, #0x5
               	bl	0x62 <svn_depth_from_word+0x62> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0xb6 <svn_depth_from_word+0xb6> @ imm = #0x4a
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r5
               	mov	r2, r4
               	movs	r3, #0xa
               	bl	0x78 <svn_depth_from_word+0x78> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0xc0 <svn_depth_from_word+0xc0> @ imm = #0x3e
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r5
               	mov	r2, r4
               	movs	r3, #0x8
               	bl	0x8e <svn_depth_from_word+0x8e> @ imm = #-0x4
               	orrs	r0, r1
               	movw	r0, #0x0
               	movt	r0, #0x0
               	it	eq
               	moveq	r6, r0
               	b	0xc8 <svn_depth_from_word+0xc8> @ imm = #0x24
               	movw	r6, #0x0
               	movt	r6, #0x0
               	b	0xc8 <svn_depth_from_word+0xc8> @ imm = #0x1a
               	movw	r6, #0x0
               	movt	r6, #0x0
               	b	0xc8 <svn_depth_from_word+0xc8> @ imm = #0x10
               	movw	r6, #0x0
               	movt	r6, #0x0
               	b	0xc8 <svn_depth_from_word+0xc8> @ imm = #0x6
               	movw	r6, #0x0
               	movt	r6, #0x0
               	ldr	r0, [r6]
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
