
/tmp/tmp.jZrW2jRdIY/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mlx5_ib_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mlx5_ib_stage_counters_cleanup>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r4, r0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	bl	0x1e <mlx5_ib_stage_counters_cleanup+0x12> @ imm = #-0x4
               	orrs	r0, r1
               	it	eq
               	popeq	{r4, r6, r7, pc}
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x2e <mlx5_ib_stage_counters_cleanup+0x22> @ imm = #-0x4
