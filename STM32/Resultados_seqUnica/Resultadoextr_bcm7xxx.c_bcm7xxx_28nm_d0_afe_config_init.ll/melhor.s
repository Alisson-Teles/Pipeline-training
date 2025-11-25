
/tmp/tmp.nXxgI541gP/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<phy_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<bcm7xxx_28nm_d0_afe_config_init>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	movw	r2, #0xeb15
               	mov	r4, r0
               	bl	0x20 <bcm7xxx_28nm_d0_afe_config_init+0x14> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movw	r2, #0x9b2f
               	bl	0x34 <bcm7xxx_28nm_d0_afe_config_init+0x28> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movw	r2, #0x2003
               	bl	0x48 <bcm7xxx_28nm_d0_afe_config_init+0x3c> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movw	r2, #0x7fc0
               	bl	0x5c <bcm7xxx_28nm_d0_afe_config_init+0x50> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movw	r2, #0x431
               	bl	0x70 <bcm7xxx_28nm_d0_afe_config_init+0x64> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movw	r2, #0xa7da
               	bl	0x84 <bcm7xxx_28nm_d0_afe_config_init+0x78> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movw	r2, #0xa020
               	bl	0x98 <bcm7xxx_28nm_d0_afe_config_init+0x8c> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movs	r2, #0xe3
               	bl	0xaa <bcm7xxx_28nm_d0_afe_config_init+0x9e> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movs	r2, #0x10
               	bl	0xbc <bcm7xxx_28nm_d0_afe_config_init+0xb0> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movw	r2, #0x11b
               	bl	0xd0 <bcm7xxx_28nm_d0_afe_config_init+0xc4> @ imm = #-0x4
               	mov	r0, r4
               	bl	0xd6 <bcm7xxx_28nm_d0_afe_config_init+0xca> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r4, r6, r7, pc}
