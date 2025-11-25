
/tmp/tmp.GzpJDjVxvb/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<hns_roce_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<hns_roce_set_db_ext_mode>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r11}
               	movw	r9, #0x0
               	movt	r9, #0x0
               	mov	r6, r1
               	ldr.w	r1, [r9]
               	mov	r8, r2
               	mov	r4, r0
               	bl	0x26 <hns_roce_set_db_ext_mode+0x1a> @ imm = #-0x4
               	bl	0x2a <hns_roce_set_db_ext_mode+0x1e> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r2, r6
               	mov	r5, r0
               	bl	0x3c <hns_roce_set_db_ext_mode+0x30> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r5
               	mov	r2, r8
               	bl	0x4e <hns_roce_set_db_ext_mode+0x42> @ imm = #-0x4
               	mov	r0, r5
               	bl	0x54 <hns_roce_set_db_ext_mode+0x48> @ imm = #-0x4
               	ldr.w	r1, [r9]
               	mov	r2, r0
               	mov	r0, r4
               	pop.w	{r8, r9, r11}
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x68 <hns_roce_set_db_ext_mode+0x5c> @ imm = #-0x4
