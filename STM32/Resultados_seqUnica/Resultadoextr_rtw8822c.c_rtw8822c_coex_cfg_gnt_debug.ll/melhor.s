
/tmp/tmp.0ejGn0P2cx/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<rtw_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<rtw8822c_coex_cfg_gnt_debug>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	movs	r0, #0x4
               	bl	0x14 <rtw8822c_coex_cfg_gnt_debug+0x8> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movs	r1, #0x66
               	movs	r3, #0x0
               	bl	0x20 <rtw8822c_coex_cfg_gnt_debug+0x14> @ imm = #-0x4
               	movs	r0, #0x0
               	bl	0x26 <rtw8822c_coex_cfg_gnt_debug+0x1a> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movs	r1, #0x67
               	movs	r3, #0x0
               	bl	0x32 <rtw8822c_coex_cfg_gnt_debug+0x26> @ imm = #-0x4
               	movs	r0, #0x3
               	bl	0x38 <rtw8822c_coex_cfg_gnt_debug+0x2c> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movs	r1, #0x42
               	movs	r3, #0x0
               	bl	0x44 <rtw8822c_coex_cfg_gnt_debug+0x38> @ imm = #-0x4
               	movs	r0, #0x7
               	bl	0x4a <rtw8822c_coex_cfg_gnt_debug+0x3e> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movs	r1, #0x65
               	movs	r3, #0x0
               	bl	0x56 <rtw8822c_coex_cfg_gnt_debug+0x4a> @ imm = #-0x4
               	movs	r0, #0x3
               	bl	0x5c <rtw8822c_coex_cfg_gnt_debug+0x50> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movs	r1, #0x73
               	movs	r3, #0x0
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x6c <rtw8822c_coex_cfg_gnt_debug+0x60> @ imm = #-0x4
