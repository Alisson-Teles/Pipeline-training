
/tmp/tmp.X4OA8E7bLU/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<sljit_compiler:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<emit_set_delta>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r11}
               	mov	r9, r2
               	mov	r6, r1
               	cmp	r3, #0x0
               	mov	r8, r0
               	bmi	0x34 <emit_set_delta+0x28> @ imm = #0x14
               	cmp.w	r3, #0x1000
               	bge	0x62 <emit_set_delta+0x56> @ imm = #0x3c
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r5, [r0]
               	mov	r0, r6
               	mov	r4, r3
               	b	0x48 <emit_set_delta+0x3c> @ imm = #0x12
               	rsbs	r4, r3, #0
               	cmp.w	r4, #0x1000
               	bge	0x82 <emit_set_delta+0x76> @ imm = #0x44
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r5, [r0]
               	mov	r0, r6
               	bl	0x48 <emit_set_delta+0x3c> @ imm = #-0x4
               	orrs	r5, r0
               	mov	r0, r9
               	bl	0x50 <emit_set_delta+0x44> @ imm = #-0x4
               	orrs	r5, r0
               	mov	r0, r4
               	bl	0x58 <emit_set_delta+0x4c> @ imm = #-0x4
               	orr.w	r1, r5, r0
               	b	0xc8 <emit_set_delta+0xbc> @ imm = #0x64
               	mov	r0, r3
               	bl	0x64 <emit_set_delta+0x58> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	cmp	r0, r1
               	beq	0x96 <emit_set_delta+0x8a> @ imm = #0x1e
               	mov	r4, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	b	0xb0 <emit_set_delta+0xa4> @ imm = #0x2c
               	mov	r0, r4
               	bl	0x84 <emit_set_delta+0x78> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	cmp	r0, r1
               	bne	0xa6 <emit_set_delta+0x9a> @ imm = #0xe
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop.w	{r8, r9, r11}
               	pop	{r4, r5, r6, r7, pc}
               	mov	r4, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r5, [r0]
               	mov	r0, r6
               	bl	0xb4 <emit_set_delta+0xa8> @ imm = #-0x4
               	mov	r6, r0
               	mov	r0, r9
               	bl	0xbc <emit_set_delta+0xb0> @ imm = #-0x4
               	orr.w	r1, r5, r4
               	orrs	r1, r6
               	orrs	r1, r0
               	mov	r0, r8
               	pop.w	{r8, r9, r11}
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0xd2 <emit_set_delta+0xc6> @ imm = #-0x4
