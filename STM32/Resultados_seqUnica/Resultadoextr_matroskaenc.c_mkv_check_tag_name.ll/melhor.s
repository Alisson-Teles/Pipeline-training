
/tmp/tmp.XytTWewayV/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mkv_check_tag_name>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	ldr	r4, [r7, #0x8]
               	movw	r1, #0x0
               	mov	r8, r3
               	mov	r6, r2
               	movt	r1, #0x0
               	mov	r2, r4
               	movs	r3, #0x5
               	mov	r5, r0
               	bl	0x1c <mkv_check_tag_name+0x1c> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0xee <mkv_check_tag_name+0xee> @ imm = #0xc8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r5
               	mov	r2, r4
               	movs	r3, #0xb
               	bl	0x32 <mkv_check_tag_name+0x32> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0xee <mkv_check_tag_name+0xee> @ imm = #0xb2
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r5
               	mov	r2, r4
               	movs	r3, #0xd
               	bl	0x48 <mkv_check_tag_name+0x48> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0xee <mkv_check_tag_name+0xee> @ imm = #0x9c
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r5
               	mov	r2, r4
               	movs	r3, #0xd
               	bl	0x5e <mkv_check_tag_name+0x5e> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0xee <mkv_check_tag_name+0xee> @ imm = #0x86
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r5
               	mov	r2, r4
               	movs	r3, #0x8
               	bl	0x74 <mkv_check_tag_name+0x74> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0xee <mkv_check_tag_name+0xee> @ imm = #0x70
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldm	r0, {r0, r1}
               	eor.w	r1, r1, r8
               	eors	r0, r6
               	orrs	r0, r1
               	bne	0xa6 <mkv_check_tag_name+0xa6> @ imm = #0x14
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r5
               	mov	r2, r4
               	movs	r3, #0x8
               	bl	0x9e <mkv_check_tag_name+0x9e> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0xee <mkv_check_tag_name+0xee> @ imm = #0x46
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldm	r0, {r0, r1}
               	eor.w	r1, r1, r8
               	eors	r0, r6
               	orrs	r0, r1
               	bne	0xf6 <mkv_check_tag_name+0xf6> @ imm = #0x3a
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r5
               	mov	r2, r4
               	movs	r3, #0x8
               	bl	0xc8 <mkv_check_tag_name+0xc8> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0xee <mkv_check_tag_name+0xee> @ imm = #0x1c
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r5
               	mov	r2, r4
               	movs	r3, #0x8
               	bl	0xde <mkv_check_tag_name+0xde> @ imm = #-0x4
               	orrs	r0, r1
               	it	ne
               	movne	r0, #0x1
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
               	movs	r0, #0x0
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
               	movs	r0, #0x1
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
