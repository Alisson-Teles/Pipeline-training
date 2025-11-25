
/tmp/tmp.cCEl6QeS2x/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<dce110_link_encoder:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<set_dp_phy_pattern_prbs7>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x8
               	movs	r1, #0x0
               	mov	r4, r0
               	bl	0x16 <set_dp_phy_pattern_prbs7+0xa> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x0
               	bl	0x1e <set_dp_phy_pattern_prbs7+0x12> @ imm = #-0x4
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	ldr	r3, [r2]
               	mov.w	r12, #0x1
               	movs	r2, #0x0
               	str.w	r12, [sp]
               	bl	0x4a <set_dp_phy_pattern_prbs7+0x3e> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x1
               	add	sp, #0x8
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x58 <set_dp_phy_pattern_prbs7+0x4c> @ imm = #-0x4
