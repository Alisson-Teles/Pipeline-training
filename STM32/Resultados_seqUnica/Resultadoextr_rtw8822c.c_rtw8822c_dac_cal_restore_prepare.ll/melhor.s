
/tmp/tmp.wwQWvqOvfK/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<rtw_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<rtw8822c_dac_cal_restore_prepare>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r2, #0xdb00
               	movt	r2, #0xdb66
               	movw	r1, #0x9b4
               	mov	r4, r0
               	bl	0x1e <rtw8822c_dac_cal_restore_prepare+0x12> @ imm = #-0x4
               	movs	r0, #0x1b
               	bl	0x24 <rtw8822c_dac_cal_restore_prepare+0x18> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x18b0
               	movs	r3, #0x0
               	bl	0x32 <rtw8822c_dac_cal_restore_prepare+0x26> @ imm = #-0x4
               	movs	r0, #0x1b
               	bl	0x38 <rtw8822c_dac_cal_restore_prepare+0x2c> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x18cc
               	movs	r3, #0x0
               	bl	0x46 <rtw8822c_dac_cal_restore_prepare+0x3a> @ imm = #-0x4
               	movs	r0, #0x1b
               	bl	0x4c <rtw8822c_dac_cal_restore_prepare+0x40> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x41b0
               	movs	r3, #0x0
               	bl	0x5a <rtw8822c_dac_cal_restore_prepare+0x4e> @ imm = #-0x4
               	movs	r0, #0x1b
               	bl	0x60 <rtw8822c_dac_cal_restore_prepare+0x54> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x41cc
               	movs	r3, #0x0
               	bl	0x6e <rtw8822c_dac_cal_restore_prepare+0x62> @ imm = #-0x4
               	movs	r0, #0x1e
               	bl	0x74 <rtw8822c_dac_cal_restore_prepare+0x68> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x1830
               	movs	r3, #0x0
               	bl	0x82 <rtw8822c_dac_cal_restore_prepare+0x76> @ imm = #-0x4
               	mov	r0, r4
               	mov.w	r1, #0x1860
               	mov.w	r2, #0xfc000000
               	movs	r3, #0x3c
               	bl	0x92 <rtw8822c_dac_cal_restore_prepare+0x86> @ imm = #-0x4
               	movs	r0, #0x0
               	bl	0x98 <rtw8822c_dac_cal_restore_prepare+0x8c> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x18b4
               	movs	r3, #0x1
               	bl	0xa6 <rtw8822c_dac_cal_restore_prepare+0x9a> @ imm = #-0x4
               	movs	r0, #0x0
               	bl	0xac <rtw8822c_dac_cal_restore_prepare+0xa0> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x18d0
               	movs	r3, #0x1
               	bl	0xba <rtw8822c_dac_cal_restore_prepare+0xae> @ imm = #-0x4
               	movs	r0, #0x1e
               	bl	0xc0 <rtw8822c_dac_cal_restore_prepare+0xb4> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x4130
               	movs	r3, #0x0
               	bl	0xce <rtw8822c_dac_cal_restore_prepare+0xc2> @ imm = #-0x4
               	mov	r0, r4
               	movw	r1, #0x4160
               	mov.w	r2, #0xfc000000
               	movs	r3, #0x3c
               	bl	0xde <rtw8822c_dac_cal_restore_prepare+0xd2> @ imm = #-0x4
               	movs	r0, #0x0
               	bl	0xe4 <rtw8822c_dac_cal_restore_prepare+0xd8> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x41b4
               	movs	r3, #0x1
               	bl	0xf2 <rtw8822c_dac_cal_restore_prepare+0xe6> @ imm = #-0x4
               	movs	r0, #0x0
               	bl	0xf8 <rtw8822c_dac_cal_restore_prepare+0xec> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x41d0
               	movs	r3, #0x1
               	bl	0x106 <rtw8822c_dac_cal_restore_prepare+0xfa> @ imm = #-0x4
               	mov	r0, r4
               	movw	r1, #0x18b0
               	mov.w	r2, #0xf00
               	movs	r3, #0x0
               	bl	0x116 <rtw8822c_dac_cal_restore_prepare+0x10a> @ imm = #-0x4
               	movs	r0, #0xe
               	bl	0x11c <rtw8822c_dac_cal_restore_prepare+0x110> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	mov.w	r1, #0x18c0
               	movs	r3, #0x0
               	bl	0x12a <rtw8822c_dac_cal_restore_prepare+0x11e> @ imm = #-0x4
               	mov	r0, r4
               	movw	r1, #0x18cc
               	mov.w	r2, #0xf00
               	movs	r3, #0x0
               	bl	0x13a <rtw8822c_dac_cal_restore_prepare+0x12e> @ imm = #-0x4
               	movs	r0, #0xe
               	bl	0x140 <rtw8822c_dac_cal_restore_prepare+0x134> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x18dc
               	movs	r3, #0x0
               	bl	0x14e <rtw8822c_dac_cal_restore_prepare+0x142> @ imm = #-0x4
               	movs	r0, #0x0
               	bl	0x154 <rtw8822c_dac_cal_restore_prepare+0x148> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x18b0
               	movs	r3, #0x0
               	bl	0x162 <rtw8822c_dac_cal_restore_prepare+0x156> @ imm = #-0x4
               	movs	r0, #0x0
               	bl	0x168 <rtw8822c_dac_cal_restore_prepare+0x15c> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x18cc
               	movs	r3, #0x0
               	bl	0x176 <rtw8822c_dac_cal_restore_prepare+0x16a> @ imm = #-0x4
               	movs	r0, #0x0
               	bl	0x17c <rtw8822c_dac_cal_restore_prepare+0x170> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x18b0
               	movs	r3, #0x1
               	bl	0x18a <rtw8822c_dac_cal_restore_prepare+0x17e> @ imm = #-0x4
               	movs	r0, #0x0
               	bl	0x190 <rtw8822c_dac_cal_restore_prepare+0x184> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x18cc
               	movs	r3, #0x1
               	bl	0x19e <rtw8822c_dac_cal_restore_prepare+0x192> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x1a4 <rtw8822c_dac_cal_restore_prepare+0x198> @ imm = #-0x4
               	mov	r0, r4
               	mov.w	r1, #0x18c0
               	mov.w	r2, #0x38000
               	movs	r3, #0x7
               	bl	0x1b4 <rtw8822c_dac_cal_restore_prepare+0x1a8> @ imm = #-0x4
               	mov	r0, r4
               	movw	r1, #0x18dc
               	mov.w	r2, #0x38000
               	movs	r3, #0x7
               	bl	0x1c4 <rtw8822c_dac_cal_restore_prepare+0x1b8> @ imm = #-0x4
               	mov	r0, r4
               	movw	r1, #0x41c0
               	mov.w	r2, #0x38000
               	movs	r3, #0x7
               	bl	0x1d4 <rtw8822c_dac_cal_restore_prepare+0x1c8> @ imm = #-0x4
               	mov	r0, r4
               	movw	r1, #0x41dc
               	mov.w	r2, #0x38000
               	movs	r3, #0x7
               	bl	0x1e4 <rtw8822c_dac_cal_restore_prepare+0x1d8> @ imm = #-0x4
               	movs	r0, #0x1a
               	bl	0x1ea <rtw8822c_dac_cal_restore_prepare+0x1de> @ imm = #-0x4
               	mov	r5, r0
               	movs	r0, #0x19
               	bl	0x1f2 <rtw8822c_dac_cal_restore_prepare+0x1e6> @ imm = #-0x4
               	orr.w	r2, r0, r5
               	mov	r0, r4
               	movw	r1, #0x18b8
               	movs	r3, #0x1
               	bl	0x202 <rtw8822c_dac_cal_restore_prepare+0x1f6> @ imm = #-0x4
               	movs	r0, #0x1a
               	bl	0x208 <rtw8822c_dac_cal_restore_prepare+0x1fc> @ imm = #-0x4
               	mov	r5, r0
               	movs	r0, #0x19
               	bl	0x210 <rtw8822c_dac_cal_restore_prepare+0x204> @ imm = #-0x4
               	orr.w	r2, r0, r5
               	mov	r0, r4
               	movw	r1, #0x18d4
               	movs	r3, #0x1
               	bl	0x220 <rtw8822c_dac_cal_restore_prepare+0x214> @ imm = #-0x4
               	mov	r0, r4
               	movw	r1, #0x41b0
               	mov.w	r2, #0xf00
               	movs	r3, #0x0
               	bl	0x230 <rtw8822c_dac_cal_restore_prepare+0x224> @ imm = #-0x4
               	movs	r0, #0xe
               	bl	0x236 <rtw8822c_dac_cal_restore_prepare+0x22a> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x41c0
               	movs	r3, #0x0
               	bl	0x244 <rtw8822c_dac_cal_restore_prepare+0x238> @ imm = #-0x4
               	mov	r0, r4
               	movw	r1, #0x41cc
               	mov.w	r2, #0xf00
               	movs	r3, #0x0
               	bl	0x254 <rtw8822c_dac_cal_restore_prepare+0x248> @ imm = #-0x4
               	movs	r0, #0xe
               	bl	0x25a <rtw8822c_dac_cal_restore_prepare+0x24e> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x41dc
               	movs	r3, #0x0
               	bl	0x268 <rtw8822c_dac_cal_restore_prepare+0x25c> @ imm = #-0x4
               	movs	r0, #0x0
               	bl	0x26e <rtw8822c_dac_cal_restore_prepare+0x262> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x41b0
               	movs	r3, #0x0
               	bl	0x27c <rtw8822c_dac_cal_restore_prepare+0x270> @ imm = #-0x4
               	movs	r0, #0x0
               	bl	0x282 <rtw8822c_dac_cal_restore_prepare+0x276> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x41cc
               	movs	r3, #0x0
               	bl	0x290 <rtw8822c_dac_cal_restore_prepare+0x284> @ imm = #-0x4
               	movs	r0, #0x0
               	bl	0x296 <rtw8822c_dac_cal_restore_prepare+0x28a> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x41b0
               	movs	r3, #0x1
               	bl	0x2a4 <rtw8822c_dac_cal_restore_prepare+0x298> @ imm = #-0x4
               	movs	r0, #0x0
               	bl	0x2aa <rtw8822c_dac_cal_restore_prepare+0x29e> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movw	r1, #0x41cc
               	movs	r3, #0x1
               	bl	0x2b8 <rtw8822c_dac_cal_restore_prepare+0x2ac> @ imm = #-0x4
               	movs	r0, #0x1a
               	bl	0x2be <rtw8822c_dac_cal_restore_prepare+0x2b2> @ imm = #-0x4
               	mov	r5, r0
               	movs	r0, #0x19
               	bl	0x2c6 <rtw8822c_dac_cal_restore_prepare+0x2ba> @ imm = #-0x4
               	orr.w	r2, r0, r5
               	mov	r0, r4
               	movw	r1, #0x41b8
               	movs	r3, #0x1
               	bl	0x2d6 <rtw8822c_dac_cal_restore_prepare+0x2ca> @ imm = #-0x4
               	movs	r0, #0x1a
               	bl	0x2dc <rtw8822c_dac_cal_restore_prepare+0x2d0> @ imm = #-0x4
               	mov	r5, r0
               	movs	r0, #0x19
               	bl	0x2e4 <rtw8822c_dac_cal_restore_prepare+0x2d8> @ imm = #-0x4
               	orr.w	r2, r0, r5
               	mov	r0, r4
               	movw	r1, #0x41d4
               	movs	r3, #0x1
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x2f8 <rtw8822c_dac_cal_restore_prepare+0x2ec> @ imm = #-0x4
