
/tmp/tmp.jnqcQ0SlLD/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<vtscsi_softc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<vtscsi_reset_bus>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r4, r0
               	bl	0x1a <vtscsi_reset_bus+0xa> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldm	r0, {r0, r1}
               	orrs	r0, r1
               	beq	0x44 <vtscsi_reset_bus+0x34> @ imm = #0x16
               	ldr	r0, [r4, #0x4]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movs	r2, #0x13
               	bl	0x38 <vtscsi_reset_bus+0x28> @ imm = #-0x4
               	movs	r0, #0x0
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldr	r0, [r4]
               	ldr	r1, [r5]
               	orrs	r0, r1
               	str	r0, [r4]
               	mov	r0, r4
               	bl	0x56 <vtscsi_reset_bus+0x46> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x5c <vtscsi_reset_bus+0x4c> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x62 <vtscsi_reset_bus+0x52> @ imm = #-0x4
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	orrs	r1, r0
               	mov	r0, r4
               	bl	0x7e <vtscsi_reset_bus+0x6e> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x8e <vtscsi_reset_bus+0x7e> @ imm = #0x6
               	ldr	r0, [r4, #0x8]
               	movs	r1, #0x0
               	bl	0x8a <vtscsi_reset_bus+0x7a> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x90 <vtscsi_reset_bus+0x80> @ imm = #-0x4
               	mov	r6, r0
               	cbz	r0, 0xb0 <vtscsi_reset_bus+0xa0> @ imm = #0x16
               	ldr	r0, [r4, #0x4]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movs	r2, #0x2c
               	bl	0xa4 <vtscsi_reset_bus+0x94> @ imm = #-0x4
               	mov	r0, r4
               	bl	0xaa <vtscsi_reset_bus+0x9a> @ imm = #-0x4
               	b	0xd4 <vtscsi_reset_bus+0xc4> @ imm = #0x22
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r2, [r0]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r3, [r0]
               	mov	r0, r4
               	bl	0xd0 <vtscsi_reset_bus+0xc0> @ imm = #-0x4
               	ldr	r0, [r4]
               	ldr	r1, [r5]
               	bics	r0, r1
               	str	r0, [r4]
               	mov	r0, r6
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
