
/tmp/tmp.C2MULfkvjY/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mlx4_vhcr:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<mlx4_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mlx4_cmd_mailbox:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mlx4_cmd_info:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mlx4_SET_PORT_wrapper>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	mov	r6, r2
               	ldrb	r2, [r2]
               	mov	r8, r3
               	mov	r5, r1
               	mov	r4, r0
               	bl	0x42 <mlx4_SET_PORT_wrapper+0x12> @ imm = #-0x4
               	cmp.w	r0, #0xffffffff
               	ble	0x6a <mlx4_SET_PORT_wrapper+0x3a> @ imm = #0x1c
               	ldrd	r2, r3, [r6]
               	mov	r1, r5
               	bfi	r2, r0, #0, #8
               	str	r2, [r6]
               	mov	r0, r4
               	str.w	r8, [r7, #0x8]
               	ldr	r8, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x66 <mlx4_SET_PORT_wrapper+0x36> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	rsbs	r0, r0, #0
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
