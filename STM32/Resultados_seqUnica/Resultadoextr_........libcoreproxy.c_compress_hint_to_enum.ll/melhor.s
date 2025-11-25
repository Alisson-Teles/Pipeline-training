
/tmp/tmp.YQTwmgJ9NR/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<compress_hint_to_enum>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r6, r0
               	movw	r0, #0x0
               	mov	r5, r1
               	movt	r0, #0x0
               	movs	r1, #0x2
               	mov	r4, r2
               	bl	0x18 <compress_hint_to_enum+0x18> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r6
               	mov	r1, r5
               	mov	r3, r4
               	bl	0x24 <compress_hint_to_enum+0x24> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x36 <compress_hint_to_enum+0x36> @ imm = #0x8
               	movw	r0, #0x0
               	movt	r0, #0x0
               	b	0xb6 <compress_hint_to_enum+0xb6> @ imm = #0x7e
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movs	r1, #0x3
               	bl	0x40 <compress_hint_to_enum+0x40> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r6
               	mov	r1, r5
               	mov	r3, r4
               	bl	0x4c <compress_hint_to_enum+0x4c> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x5e <compress_hint_to_enum+0x5e> @ imm = #0x8
               	movw	r0, #0x0
               	movt	r0, #0x0
               	b	0xb6 <compress_hint_to_enum+0xb6> @ imm = #0x56
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movs	r1, #0x4
               	bl	0x68 <compress_hint_to_enum+0x68> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r6
               	mov	r1, r5
               	mov	r3, r4
               	bl	0x74 <compress_hint_to_enum+0x74> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x86 <compress_hint_to_enum+0x86> @ imm = #0x8
               	movw	r0, #0x0
               	movt	r0, #0x0
               	b	0xb6 <compress_hint_to_enum+0xb6> @ imm = #0x2e
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movs	r1, #0x2
               	bl	0x90 <compress_hint_to_enum+0x90> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r6
               	mov	r1, r5
               	mov	r3, r4
               	bl	0x9c <compress_hint_to_enum+0x9c> @ imm = #-0x4
               	orrs	r0, r1
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	it	eq
               	moveq	r0, r1
               	ldrb	r0, [r0]
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
