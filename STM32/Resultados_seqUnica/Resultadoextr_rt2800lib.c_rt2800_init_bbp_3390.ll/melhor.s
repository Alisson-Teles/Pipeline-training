
/tmp/tmp.ii2D4bEQht/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<rt2x00_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<rt2800_init_bbp_3390>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movs	r1, #0x41
               	movs	r2, #0x2c
               	mov	r4, r0
               	bl	0x16 <rt2800_init_bbp_3390+0xa> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x42
               	movs	r2, #0x38
               	bl	0x20 <rt2800_init_bbp_3390+0x14> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x45
               	movs	r2, #0x12
               	bl	0x2a <rt2800_init_bbp_3390+0x1e> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x49
               	movs	r2, #0x10
               	bl	0x34 <rt2800_init_bbp_3390+0x28> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x46
               	movs	r2, #0xa
               	bl	0x3e <rt2800_init_bbp_3390+0x32> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x4f
               	movs	r2, #0x13
               	bl	0x48 <rt2800_init_bbp_3390+0x3c> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x50
               	movs	r2, #0x5
               	bl	0x52 <rt2800_init_bbp_3390+0x46> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x51
               	movs	r2, #0x33
               	bl	0x5c <rt2800_init_bbp_3390+0x50> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x52
               	movs	r2, #0x62
               	bl	0x66 <rt2800_init_bbp_3390+0x5a> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x53
               	movs	r2, #0x6a
               	bl	0x70 <rt2800_init_bbp_3390+0x64> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x54
               	movs	r2, #0x99
               	bl	0x7a <rt2800_init_bbp_3390+0x6e> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x56
               	movs	r2, #0x0
               	bl	0x84 <rt2800_init_bbp_3390+0x78> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x5b
               	movs	r2, #0x4
               	bl	0x8e <rt2800_init_bbp_3390+0x82> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x5c
               	movs	r2, #0x0
               	bl	0x98 <rt2800_init_bbp_3390+0x8c> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r2, [r0]
               	mov	r0, r4
               	bl	0xb2 <rt2800_init_bbp_3390+0xa6> @ imm = #-0x4
               	orrs.w	r2, r0, r1
               	mov	r0, r4
               	mov.w	r1, #0x67
               	it	ne
               	movne	r2, #0xc0
               	bl	0xc4 <rt2800_init_bbp_3390+0xb8> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x69
               	movs	r2, #0x5
               	bl	0xce <rt2800_init_bbp_3390+0xc2> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x6a
               	movs	r2, #0x35
               	bl	0xd8 <rt2800_init_bbp_3390+0xcc> @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0xe2 <rt2800_init_bbp_3390+0xd6> @ imm = #-0x4
