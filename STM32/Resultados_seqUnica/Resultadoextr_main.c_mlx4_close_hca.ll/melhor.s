
/tmp/tmp.XG7B9ourwN/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mlx4_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mlx4_close_hca>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <mlx4_close_hca+0x6> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x18 <mlx4_close_hca+0xc> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x1e <mlx4_close_hca+0x12> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x30 <mlx4_close_hca+0x24> @ imm = #0x8
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x2c <mlx4_close_hca+0x20> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x0
               	bl	0x34 <mlx4_close_hca+0x28> @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x3e <mlx4_close_hca+0x32> @ imm = #-0x4
