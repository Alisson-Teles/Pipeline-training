
/tmp/tmp.FbVsondVNW/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<amdgpu_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<gmc_v6_0_set_fault_enable_default>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldr	r0, [r5]
               	mov	r4, r1
               	bl	0x20 <gmc_v6_0_set_fault_enable_default+0x14> @ imm = #-0x4
               	movw	r6, #0x0
               	movw	r2, #0x0
               	movt	r6, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r6]
               	ldr	r2, [r2]
               	mov	r3, r4
               	bl	0x3a <gmc_v6_0_set_fault_enable_default+0x2e> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r6]
               	ldr	r2, [r2]
               	mov	r3, r4
               	bl	0x4c <gmc_v6_0_set_fault_enable_default+0x40> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r6]
               	ldr	r2, [r2]
               	mov	r3, r4
               	bl	0x5e <gmc_v6_0_set_fault_enable_default+0x52> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r6]
               	ldr	r2, [r2]
               	mov	r3, r4
               	bl	0x70 <gmc_v6_0_set_fault_enable_default+0x64> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r6]
               	ldr	r2, [r2]
               	mov	r3, r4
               	bl	0x82 <gmc_v6_0_set_fault_enable_default+0x76> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r6]
               	ldr	r2, [r2]
               	mov	r3, r4
               	bl	0x94 <gmc_v6_0_set_fault_enable_default+0x88> @ imm = #-0x4
               	ldr	r1, [r5]
               	mov	r2, r0
               	mov	r0, r1
               	mov	r1, r2
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0xa8 <gmc_v6_0_set_fault_enable_default+0x9c> @ imm = #-0x4
