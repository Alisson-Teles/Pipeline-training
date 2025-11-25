
/tmp/tmp.zfQ6J2UjNw/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<sk_buff:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<rdma_restrack_entry:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<fill_res_name_pid>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r4, r0
               	mov	r0, r1
               	mov	r5, r1
               	bl	0x26 <fill_res_name_pid+0xe> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x42 <fill_res_name_pid+0x2a> @ imm = #0x12
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	ldr	r2, [r5, #0x4]
               	mov	r0, r4
               	bl	0x3c <fill_res_name_pid+0x24> @ imm = #-0x4
               	b	0x5c <fill_res_name_pid+0x44> @ imm = #0x18
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r6, [r0]
               	ldr	r0, [r5]
               	bl	0x4e <fill_res_name_pid+0x36> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	mov	r1, r6
               	bl	0x58 <fill_res_name_pid+0x40> @ imm = #-0x4
               	orrs	r0, r1
               	iteee	eq
               	moveq	r0, #0x0
               	movwne	r0, #0x0
               	movtne	r0, #0x0
               	ldrne	r0, [r0]
               	it	ne
               	rsbne	r0, r0, #0
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
