
/tmp/tmp.7LNOjwp4h2/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<rockchip_lvds:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<rockchip_lvds_poweron>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r6, r0
               	ldr	r0, [r0, #0x8]
               	bl	0x1c <rockchip_lvds_poweron+0xc> @ imm = #-0x4
               	mov	r5, r0
               	ldr	r0, [r6, #0xc]
               	cmp	r5, #0x0
               	bmi.w	0x17e <rockchip_lvds_poweron+0x16e> @ imm = #0x154
               	bl	0x2a <rockchip_lvds_poweron+0x1a> @ imm = #-0x4
               	cmp.w	r0, #0xffffffff
               	ble.w	0x190 <rockchip_lvds_poweron+0x180> @ imm = #0x15a
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	movw	r2, #0x0
               	orrs	r0, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	orrs	r0, r1
               	movw	r1, #0x0
               	movw	r5, #0x0
               	movt	r1, #0x0
               	movt	r5, #0x0
               	orrs	r0, r2
               	ldr	r1, [r1]
               	ldrd	r2, r3, [r6]
               	ldr	r4, [r5, #0x4]
               	ldr	r5, [r5]
               	orrs	r0, r1
               	eor.w	r1, r3, r4
               	eors	r2, r5
               	orrs	r1, r2
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r2, [r1]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	orr.w	r0, r0, r2
               	bne.w	0x1ac <rockchip_lvds_poweron+0x19c> @ imm = #0x108
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	orrs	r2, r0
               	mov	r0, r6
               	bl	0xb2 <rockchip_lvds_poweron+0xa2> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r5, [r0]
               	movs	r0, #0x46
               	bl	0xc2 <rockchip_lvds_poweron+0xb2> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r6
               	mov	r1, r5
               	bl	0xcc <rockchip_lvds_poweron+0xbc> @ imm = #-0x4
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	movw	r2, #0x0
               	orrs	r0, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	movt	r2, #0x0
               	orrs	r0, r1
               	movw	r1, #0x0
               	ldr	r2, [r2]
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	orrs	r0, r2
               	orrs	r0, r1
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	ldr	r3, [r1]
               	ldr	r1, [r2]
               	orr.w	r2, r0, r3
               	mov	r0, r6
               	bl	0x124 <rockchip_lvds_poweron+0x114> @ imm = #-0x4
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	movw	r2, #0x0
               	orrs	r0, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	movt	r2, #0x0
               	orrs	r0, r1
               	movw	r1, #0x0
               	ldr	r2, [r2]
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	orrs	r0, r2
               	orrs	r0, r1
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	ldr	r3, [r1]
               	ldr	r1, [r2]
               	orr.w	r2, r0, r3
               	mov	r0, r6
               	b	0x2a6 <rockchip_lvds_poweron+0x296> @ imm = #0x126
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r2, r5
               	movs	r3, #0x1e
               	bl	0x18a <rockchip_lvds_poweron+0x17a> @ imm = #-0x4
               	b	0x32e <rockchip_lvds_poweron+0x31e> @ imm = #0x19c
               	mov	r5, r0
               	ldr	r0, [r6, #0xc]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r2, r5
               	movs	r3, #0x1d
               	bl	0x1a0 <rockchip_lvds_poweron+0x190> @ imm = #-0x4
               	ldr	r0, [r6, #0x8]
               	bl	0x1a6 <rockchip_lvds_poweron+0x196> @ imm = #-0x4
               	b	0x32e <rockchip_lvds_poweron+0x31e> @ imm = #0x180
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	orrs	r2, r0
               	mov	r0, r6
               	bl	0x1ba <rockchip_lvds_poweron+0x1aa> @ imm = #-0x4
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	movw	r2, #0x0
               	orrs	r0, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	movt	r2, #0x0
               	orrs	r0, r1
               	movw	r1, #0x0
               	ldr	r2, [r2]
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	orrs	r0, r2
               	orrs	r0, r1
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	ldr	r3, [r1]
               	ldr	r1, [r2]
               	orr.w	r2, r0, r3
               	mov	r0, r6
               	bl	0x212 <rockchip_lvds_poweron+0x202> @ imm = #-0x4
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	movw	r2, #0x0
               	movt	r2, #0x0
               	orrs	r0, r1
               	movw	r1, #0x0
               	ldr	r2, [r2]
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	orrs	r0, r2
               	movw	r2, #0x0
               	movt	r2, #0x0
               	orrs	r0, r1
               	movw	r1, #0x0
               	ldr	r2, [r2]
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	orrs	r0, r2
               	orrs	r0, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movw	r2, #0x0
               	ldr	r1, [r1]
               	movt	r2, #0x0
               	ldr	r5, [r2]
               	orr.w	r4, r0, r1
               	movs	r0, #0x46
               	bl	0x276 <rockchip_lvds_poweron+0x266> @ imm = #-0x4
               	orr.w	r2, r4, r0
               	mov	r0, r6
               	mov	r1, r5
               	bl	0x282 <rockchip_lvds_poweron+0x272> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r6
               	movs	r2, #0x0
               	bl	0x294 <rockchip_lvds_poweron+0x284> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r6
               	movs	r2, #0x0
               	bl	0x2a6 <rockchip_lvds_poweron+0x296> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r5, [r0]
               	movs	r0, #0x46
               	bl	0x2b6 <rockchip_lvds_poweron+0x2a6> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r6
               	mov	r1, r5
               	bl	0x2c0 <rockchip_lvds_poweron+0x2b0> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r5, [r0]
               	movs	r0, #0xa
               	bl	0x2d0 <rockchip_lvds_poweron+0x2c0> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r6
               	mov	r1, r5
               	bl	0x2da <rockchip_lvds_poweron+0x2ca> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r2, [r0]
               	mov	r0, r6
               	bl	0x2f4 <rockchip_lvds_poweron+0x2e4> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r2, [r0]
               	mov	r0, r6
               	bl	0x30e <rockchip_lvds_poweron+0x2fe> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r2, [r0]
               	mov	r0, r6
               	bl	0x328 <rockchip_lvds_poweron+0x318> @ imm = #-0x4
               	movs	r5, #0x0
               	mov	r0, r5
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
