
/tmp/tmp.StDZPpDw0Y/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<sk_buff:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mlx5e_skb_l3_header_offset>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <mlx5e_skb_l3_header_offset+0x6> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x24 <mlx5e_skb_l3_header_offset+0x18> @ imm = #0x8
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x20 <mlx5e_skb_l3_header_offset+0x14> @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x2a <mlx5e_skb_l3_header_offset+0x1e> @ imm = #-0x4
