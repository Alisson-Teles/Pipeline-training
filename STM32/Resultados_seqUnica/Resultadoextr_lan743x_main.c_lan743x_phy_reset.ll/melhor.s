
/tmp/tmp.N8wmhNknxo/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<lan743x_adapter:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<lan743x_phy_reset>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	sub	sp, #0x8
               	movw	r6, #0x0
               	movt	r6, #0x0
               	ldr	r1, [r6]
               	mov	r5, r0
               	bl	0x22 <lan743x_phy_reset+0x16> @ imm = #-0x4
               	movw	r8, #0x0
               	movt	r8, #0x0
               	ldr.w	r2, [r8]
               	ldr	r1, [r6]
               	orr.w	r4, r2, r0
               	mov	r0, r5
               	mov	r2, r4
               	bl	0x3c <lan743x_phy_reset+0x30> @ imm = #-0x4
               	movw	r3, #0x0
               	ldr.w	r2, [r8]
               	movt	r3, #0x0
               	ldr	r3, [r3]
               	movw	r0, #0x0
               	ands	r2, r4
               	movt	r0, #0x0
               	clz	r2, r2
               	ands	r3, r4
               	ldr	r0, [r0]
               	ldr	r1, [r6]
               	lsr.w	r2, r2, #0x5
               	it	ne
               	movne	r3, #0x1
               	movw	r6, #0x4240
               	ands	r3, r2
               	movt	r6, #0xf
               	movw	r5, #0xc350
               	mov	r2, r4
               	strd	r5, r6, [sp]
               	bl	0x7e <lan743x_phy_reset+0x72> @ imm = #-0x4
               	add	sp, #0x8
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
