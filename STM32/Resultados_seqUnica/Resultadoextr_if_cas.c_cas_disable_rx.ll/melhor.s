
/tmp/tmp.9EKjlLdjlg/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<cas_softc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<cas_disable_rx>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	movw	r6, #0x0
               	movt	r6, #0x0
               	ldr	r5, [r6]
               	mov	r4, r0
               	mov	r1, r5
               	bl	0x22 <cas_disable_rx+0x16> @ imm = #-0x4
               	movw	r8, #0x0
               	movt	r8, #0x0
               	ldr.w	r1, [r8]
               	bic.w	r2, r0, r1
               	mov	r0, r4
               	mov	r1, r5
               	bl	0x3a <cas_disable_rx+0x2e> @ imm = #-0x4
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r2, [r1]
               	ldr	r1, [r6]
               	orr.w	r3, r2, r0
               	mov	r0, r4
               	movs	r2, #0x4
               	bl	0x5c <cas_disable_rx+0x50> @ imm = #-0x4
               	ldr	r1, [r6]
               	ldr.w	r2, [r8]
               	mov	r0, r4
               	movs	r3, #0x0
               	bl	0x6a <cas_disable_rx+0x5e> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x7a <cas_disable_rx+0x6e> @ imm = #0x6
               	movs	r0, #0x1
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldm	r0, {r0, r1}
               	orrs	r0, r1
               	beq	0x98 <cas_disable_rx+0x8c> @ imm = #0xe
               	ldr	r0, [r4]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movs	r2, #0x16
               	bl	0x94 <cas_disable_rx+0x88> @ imm = #-0x4
               	movs	r0, #0x0
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
