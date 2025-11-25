
/tmp/tmp.93ODNqxOtp/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mlx5e_rqt:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<mlx5e_priv:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mlx5e_destroy_rqt>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r2, #0x0
               	str	r2, [r1]
               	ldr	r0, [r0]
               	ldr	r1, [r1, #0x4]
               	pop.w	{r7, lr}
               	b.w	0x28 <mlx5e_destroy_rqt+0x10> @ imm = #-0x4
