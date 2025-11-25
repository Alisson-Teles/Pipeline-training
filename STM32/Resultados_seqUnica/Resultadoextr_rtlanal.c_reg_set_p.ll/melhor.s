
/tmp/tmp.fmRmyQEHJU/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<reg_set_p>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	mov	r5, r0
               	mov	r0, r1
               	mov	r4, r1
               	bl	0xe <reg_set_p+0xe>     @ imm = #-0x4
               	orrs	r0, r1
               	beq	0xa0 <reg_set_p+0xa0>   @ imm = #0x88
               	mov	r0, r4
               	mov	r1, r5
               	bl	0x1a <reg_set_p+0x1a>   @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x2a <reg_set_p+0x2a>   @ imm = #0x6
               	movs	r0, #0x1
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
               	mov	r0, r4
               	bl	0x2c <reg_set_p+0x2c>   @ imm = #-0x4
               	orrs	r0, r1
               	beq	0xa0 <reg_set_p+0xa0>   @ imm = #0x6a
               	mov	r0, r5
               	bl	0x36 <reg_set_p+0x36>   @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x80 <reg_set_p+0x80>   @ imm = #0x40
               	mov	r0, r5
               	bl	0x40 <reg_set_p+0x40>   @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r2, {r2, r3}
               	subs	r0, r0, r2
               	sbcs.w	r0, r1, r3
               	bge	0x80 <reg_set_p+0x80>   @ imm = #0x28
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr.w	r8, [r0]
               	mov	r0, r5
               	bl	0x64 <reg_set_p+0x64>   @ imm = #-0x4
               	mov	r6, r0
               	mov	r0, r5
               	bl	0x6c <reg_set_p+0x6c>   @ imm = #-0x4
               	mov	r2, r0
               	mov	r3, r1
               	mov	r0, r8
               	mov	r1, r6
               	bl	0x78 <reg_set_p+0x78>   @ imm = #-0x4
               	orrs	r0, r1
               	bne	0x22 <reg_set_p+0x22>   @ imm = #-0x60
               	mov	r0, r5
               	bl	0x82 <reg_set_p+0x82>   @ imm = #-0x4
               	orrs	r0, r1
               	bne	0x22 <reg_set_p+0x22>   @ imm = #-0x6a
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	mov	r2, r5
               	bl	0x98 <reg_set_p+0x98>   @ imm = #-0x4
               	orrs	r0, r1
               	bne	0x22 <reg_set_p+0x22>   @ imm = #-0x80
               	mov	r0, r5
               	mov	r1, r4
               	bl	0xa4 <reg_set_p+0xa4>   @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r2, {r2, r3}
               	eors	r1, r3
               	eors	r0, r2
               	orrs	r0, r1
               	it	ne
               	movne	r0, #0x1
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
