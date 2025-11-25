
/tmp/tmp.xcHnAVVMbc/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_6__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<TYPE_5__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<check_protocol>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r4, r0
               	ldrd	r5, r2, [r4, #4]
               	ldr	r0, [r0]
               	ldr	r3, [r4, #0xc]
               	mov	r6, r1
               	mov	r1, r5
               	bl	0x32 <check_protocol+0x16> @ imm = #-0x4
               	cbz	r0, 0x54 <check_protocol+0x38> @ imm = #0x1a
               	ldrd	r2, r3, [r6]
               	orrs.w	r0, r2, r3
               	beq	0x4c <check_protocol+0x30> @ imm = #0x8
               	ldrd	r0, r1, [r4]
               	bl	0x46 <check_protocol+0x2a> @ imm = #-0x4
               	cbz	r0, 0x78 <check_protocol+0x5c> @ imm = #0x2a
               	movs	r0, #0x1
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
               	ldrd	r0, r1, [r4]
               	bl	0x58 <check_protocol+0x3c> @ imm = #-0x4
               	ldrd	r2, r1, [r4, #8]
               	mov	r4, r0
               	mov	r0, r2
               	bl	0x64 <check_protocol+0x48> @ imm = #-0x4
               	mov	r2, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	mov	r1, r4
               	movs	r3, #0x29
               	b	0x9a <check_protocol+0x7e> @ imm = #0x20
               	ldrd	r0, r1, [r6]
               	bl	0x7c <check_protocol+0x60> @ imm = #-0x4
               	ldrd	r2, r1, [r4]
               	mov	r4, r0
               	mov	r0, r2
               	bl	0x88 <check_protocol+0x6c> @ imm = #-0x4
               	mov	r2, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	mov	r1, r4
               	movs	r3, #0x28
               	bl	0x9a <check_protocol+0x7e> @ imm = #-0x4
               	movs	r0, #0x0
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
