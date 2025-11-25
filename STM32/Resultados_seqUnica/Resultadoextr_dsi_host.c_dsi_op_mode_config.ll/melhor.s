
/tmp/tmp.FujheOGKJM/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<msm_dsi_host:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<dsi_op_mode_config>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	movw	r8, #0x0
               	movt	r8, #0x0
               	mov	r5, r1
               	ldr.w	r1, [r8]
               	mov	r6, r2
               	mov	r4, r0
               	bl	0x26 <dsi_op_mode_config+0x1a> @ imm = #-0x4
               	cbz	r6, 0x3a <dsi_op_mode_config+0x2e> @ imm = #0xc
               	cbz	r5, 0x82 <dsi_op_mode_config+0x76> @ imm = #0x52
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r5, [r1]
               	b	0xa2 <dsi_op_mode_config+0x96> @ imm = #0x66
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	movw	r3, #0x0
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	movt	r3, #0x0
               	ldr	r3, [r3]
               	orrs	r1, r2
               	orrs	r1, r3
               	movw	r2, #0x0
               	movw	r3, #0x0
               	movt	r2, #0x0
               	movt	r3, #0x0
               	ldr	r2, [r2]
               	ldr	r3, [r3]
               	bic.w	r5, r0, r1
               	orr.w	r1, r3, r2
               	mov	r0, r4
               	movs	r2, #0x0
               	bl	0x7c <dsi_op_mode_config+0x70> @ imm = #-0x4
               	b	0xb2 <dsi_op_mode_config+0xa6> @ imm = #0x2e
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r5, [r1]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r6, r0
               	mov	r0, r4
               	movs	r2, #0x1
               	bl	0x9c <dsi_op_mode_config+0x90> @ imm = #-0x4
               	mov	r0, r6
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	orrs	r1, r5
               	orr.w	r5, r1, r0
               	ldr.w	r1, [r8]
               	mov	r0, r4
               	mov	r2, r5
               	ldr	r8, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0xc2 <dsi_op_mode_config+0xb6> @ imm = #-0x4
