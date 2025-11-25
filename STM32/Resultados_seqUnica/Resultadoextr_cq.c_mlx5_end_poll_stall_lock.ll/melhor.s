
/tmp/tmp.JVnpUtnQNU/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ibv_cq_ex:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mlx5_end_poll_stall_lock>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r2, [r1]
               	movs	r1, #0x1
               	pop.w	{r7, lr}
               	b.w	0x20 <mlx5_end_poll_stall_lock+0x14> @ imm = #-0x4
