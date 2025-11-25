
/tmp/tmp.yrsulKTtWj/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_7__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<TYPE_8__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<TYPE_9__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<ge_msub>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r5, r1
               	ldrd	r3, r1, [r1, #8]
               	mov	r4, r0
               	ldr	r0, [r0, #0xc]
               	mov	r6, r2
               	mov	r2, r3
               	bl	0x46 <ge_msub+0x16>     @ imm = #-0x4
               	ldr	r0, [r4, #0x8]
               	ldrd	r2, r1, [r5, #8]
               	bl	0x50 <ge_msub+0x20>     @ imm = #-0x4
               	ldr	r0, [r4, #0x4]
               	ldr	r1, [r4, #0xc]
               	ldr	r2, [r6, #0x8]
               	bl	0x5a <ge_msub+0x2a>     @ imm = #-0x4
               	ldr	r0, [r4, #0x8]
               	ldr	r2, [r6, #0x4]
               	mov	r1, r0
               	bl	0x64 <ge_msub+0x34>     @ imm = #-0x4
               	ldr	r0, [r4]
               	ldr	r1, [r6]
               	ldr	r2, [r5, #0x4]
               	bl	0x6e <ge_msub+0x3e>     @ imm = #-0x4
               	ldr	r1, [r5]
               	movs	r0, #0x0
               	mov	r2, r1
               	bl	0x78 <ge_msub+0x48>     @ imm = #-0x4
               	ldrd	r1, r2, [r4, #4]
               	ldr	r0, [r4, #0xc]
               	bl	0x82 <ge_msub+0x52>     @ imm = #-0x4
               	ldrd	r1, r0, [r4, #4]
               	mov	r2, r0
               	bl	0x8c <ge_msub+0x5c>     @ imm = #-0x4
               	ldrd	r2, r0, [r4]
               	movs	r1, #0x0
               	bl	0x96 <ge_msub+0x66>     @ imm = #-0x4
               	ldr	r0, [r4]
               	movs	r1, #0x0
               	mov	r2, r0
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0xa8 <ge_msub+0x78>     @ imm = #-0x4
