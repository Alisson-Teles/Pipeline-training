
/tmp/tmp.n2i8HN49jE/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<qlcnic_adapter:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<qlcnic_83xx_take_eport_out_of_reset>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	movs	r2, #0x0
               	mov	r4, r0
               	bl	0x1e <qlcnic_83xx_take_eport_out_of_reset+0x12> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movs	r2, #0x0
               	bl	0x30 <qlcnic_83xx_take_eport_out_of_reset+0x24> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movs	r2, #0x0
               	bl	0x42 <qlcnic_83xx_take_eport_out_of_reset+0x36> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movs	r2, #0x0
               	bl	0x54 <qlcnic_83xx_take_eport_out_of_reset+0x48> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movs	r2, #0x0
               	bl	0x66 <qlcnic_83xx_take_eport_out_of_reset+0x5a> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movs	r2, #0x0
               	bl	0x78 <qlcnic_83xx_take_eport_out_of_reset+0x6c> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movs	r2, #0x0
               	bl	0x8a <qlcnic_83xx_take_eport_out_of_reset+0x7e> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movs	r2, #0x0
               	bl	0x9c <qlcnic_83xx_take_eport_out_of_reset+0x90> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movs	r2, #0x1
               	pop.w	{r4, r6, r7, lr}
               	b.w	0xb2 <qlcnic_83xx_take_eport_out_of_reset+0xa6> @ imm = #-0x4
