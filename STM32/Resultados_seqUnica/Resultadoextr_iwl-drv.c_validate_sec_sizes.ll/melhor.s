
/tmp/tmp.Qvv4gyJIqx/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<iwl_firmware_pieces:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<iwl_drv:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<iwl_cfg:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<validate_sec_sizes>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r10, r11}
               	sub	sp, #0x4
               	movw	r6, #0x0
               	movw	r10, #0x0
               	movt	r6, #0x0
               	movt	r10, #0x0
               	mov	r4, r2
               	mov	r5, r1
               	ldr	r1, [r6]
               	ldr.w	r2, [r10]
               	mov	r9, r0
               	mov	r0, r5
               	bl	0x50 <validate_sec_sizes+0x28> @ imm = #-0x4
               	mov	r3, r1
               	movw	r1, #0x0
               	mov	r2, r0
               	mov.w	r11, #0x28
               	movt	r1, #0x0
               	mov	r0, r9
               	str.w	r11, [sp]
               	bl	0x6a <validate_sec_sizes+0x42> @ imm = #-0x4
               	ldr	r1, [r6]
               	movw	r6, #0x0
               	movt	r6, #0x0
               	ldr	r2, [r6]
               	mov	r0, r5
               	bl	0x7c <validate_sec_sizes+0x54> @ imm = #-0x4
               	mov	r3, r1
               	movw	r1, #0x0
               	mov	r2, r0
               	movt	r1, #0x0
               	mov	r0, r9
               	str.w	r11, [sp]
               	bl	0x92 <validate_sec_sizes+0x6a> @ imm = #-0x4
               	movw	r8, #0x0
               	movt	r8, #0x0
               	ldr.w	r1, [r8]
               	ldr.w	r2, [r10]
               	mov	r0, r5
               	bl	0xa8 <validate_sec_sizes+0x80> @ imm = #-0x4
               	mov	r3, r1
               	movw	r1, #0x0
               	mov	r2, r0
               	mov.w	r11, #0x25
               	movt	r1, #0x0
               	mov	r0, r9
               	str.w	r11, [sp]
               	bl	0xc2 <validate_sec_sizes+0x9a> @ imm = #-0x4
               	ldr.w	r1, [r8]
               	ldr	r2, [r6]
               	mov	r0, r5
               	bl	0xce <validate_sec_sizes+0xa6> @ imm = #-0x4
               	mov	r3, r1
               	movw	r1, #0x0
               	mov	r2, r0
               	movt	r1, #0x0
               	mov	r0, r9
               	movw	r8, #0x0
               	str.w	r11, [sp]
               	movt	r8, #0x0
               	bl	0xec <validate_sec_sizes+0xc4> @ imm = #-0x4
               	ldr.w	r1, [r8]
               	ldr.w	r2, [r10]
               	mov	r0, r5
               	bl	0xfa <validate_sec_sizes+0xd2> @ imm = #-0x4
               	ldrd	r2, r3, [r4]
               	subs	r0, r2, r0
               	sbcs.w	r0, r3, r1
               	ldr.w	r1, [r8]
               	bge	0x12a <validate_sec_sizes+0x102> @ imm = #0x1a
               	ldr.w	r2, [r10]
               	mov	r0, r5
               	bl	0x114 <validate_sec_sizes+0xec> @ imm = #-0x4
               	mov	r3, r1
               	movw	r1, #0x0
               	mov	r2, r0
               	movt	r1, #0x0
               	mov	r0, r9
               	movs	r6, #0x28
               	b	0x1ce <validate_sec_sizes+0x1a6> @ imm = #0xa2
               	ldr	r2, [r6]
               	mov	r0, r5
               	bl	0x12e <validate_sec_sizes+0x106> @ imm = #-0x4
               	ldrd	r2, r3, [r4, #8]
               	mov	r11, r6
               	subs	r0, r2, r0
               	sbcs.w	r0, r3, r1
               	bge	0x15e <validate_sec_sizes+0x136> @ imm = #0x1c
               	ldr.w	r1, [r8]
               	ldr.w	r2, [r11]
               	mov	r0, r5
               	bl	0x14a <validate_sec_sizes+0x122> @ imm = #-0x4
               	mov	r3, r1
               	movw	r1, #0x0
               	mov	r2, r0
               	movs	r6, #0x27
               	movt	r1, #0x0
               	b	0x1cc <validate_sec_sizes+0x1a4> @ imm = #0x6c
               	movw	r6, #0x0
               	movt	r6, #0x0
               	ldr	r1, [r6]
               	ldr.w	r2, [r10]
               	mov	r0, r5
               	bl	0x16e <validate_sec_sizes+0x146> @ imm = #-0x4
               	ldrd	r2, r3, [r4]
               	subs	r0, r2, r0
               	sbcs.w	r0, r3, r1
               	ldr	r1, [r6]
               	bge	0x19a <validate_sec_sizes+0x172> @ imm = #0x18
               	ldr.w	r2, [r10]
               	mov	r0, r5
               	bl	0x186 <validate_sec_sizes+0x15e> @ imm = #-0x4
               	mov	r3, r1
               	movw	r1, #0x0
               	mov	r2, r0
               	movs	r6, #0x2d
               	movt	r1, #0x0
               	b	0x1cc <validate_sec_sizes+0x1a4> @ imm = #0x30
               	ldr.w	r2, [r11]
               	mov	r0, r5
               	bl	0x1a0 <validate_sec_sizes+0x178> @ imm = #-0x4
               	ldrd	r2, r3, [r4, #8]
               	subs	r0, r2, r0
               	sbcs.w	r0, r3, r1
               	bge	0x1e0 <validate_sec_sizes+0x1b8> @ imm = #0x2e
               	ldr.w	r1, [r8]
               	ldr.w	r2, [r11]
               	mov	r0, r5
               	bl	0x1ba <validate_sec_sizes+0x192> @ imm = #-0x4
               	mov	r3, r1
               	movw	r1, #0x0
               	mov	r2, r0
               	movs	r6, #0x2c
               	movt	r1, #0x0
               	mov	r0, r9
               	str	r6, [sp]
               	bl	0x1d0 <validate_sec_sizes+0x1a8> @ imm = #-0x4
               	mov.w	r0, #0xffffffff
               	add	sp, #0x4
               	pop.w	{r8, r9, r10, r11}
               	pop	{r4, r5, r6, r7, pc}
               	movs	r0, #0x0
               	b	0x1d8 <validate_sec_sizes+0x1b0> @ imm = #-0xe
