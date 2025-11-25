
/tmp/tmp.uU7IwckY2E/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mlx5e_priv:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mlx5e_tc_tun_can_offload_geneve>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	bl	0x1c <mlx5e_tc_tun_can_offload_geneve+0x10> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	ands	r0, r1
               	it	ne
               	movne	r0, #0x1
               	pop	{r7, pc}
