
/tmp/tmp.KYuOXfAaFI/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ibv_pd:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mlx5_free_pd>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <mlx5_free_pd+0x6> @ imm = #-0x4
               	cmp	r0, #0x0
               	it	ne
               	popne	{r4, r6, r7, pc}
               	mov	r0, r4
               	bl	0x1e <mlx5_free_pd+0x12> @ imm = #-0x4
               	bl	0x22 <mlx5_free_pd+0x16> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r4, r6, r7, pc}
