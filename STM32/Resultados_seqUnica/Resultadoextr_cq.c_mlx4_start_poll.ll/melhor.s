
/tmp/tmp.XJMREVevf1/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ibv_poll_cq_attr:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ibv_cq_ex:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mlx4_start_poll>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r2, #0x0
               	pop.w	{r7, lr}
               	b.w	0x22 <mlx4_start_poll+0xa> @ imm = #-0x4
