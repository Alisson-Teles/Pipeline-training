
/tmp/tmp.XqLvb1ip6N/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<pxa_i2c:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<i2c_pxa_start_message>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r0, [r0, #0x4]
               	bl	0x14 <i2c_pxa_start_message+0x8> @ imm = #-0x4
               	mov	r5, r0
               	mov	r0, r4
               	bl	0x1c <i2c_pxa_start_message+0x10> @ imm = #-0x4
               	mov	r1, r0
               	mov	r0, r5
               	bl	0x24 <i2c_pxa_start_message+0x18> @ imm = #-0x4
               	ldr	r0, [r4, #0x4]
               	bl	0x2a <i2c_pxa_start_message+0x1e> @ imm = #-0x4
               	str	r0, [r4]
               	mov	r0, r4
               	bl	0x32 <i2c_pxa_start_message+0x26> @ imm = #-0x4
               	bl	0x36 <i2c_pxa_start_message+0x2a> @ imm = #-0x4
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	orrs	r1, r2
               	bics	r0, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movw	r2, #0x0
               	ldr	r1, [r1]
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	orrs	r0, r1
               	orr.w	r5, r0, r2
               	mov	r0, r4
               	bl	0x6e <i2c_pxa_start_message+0x62> @ imm = #-0x4
               	mov	r1, r0
               	mov	r0, r5
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x7a <i2c_pxa_start_message+0x6e> @ imm = #-0x4
