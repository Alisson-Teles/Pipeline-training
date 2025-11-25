
/tmp/tmp.sJI1OB8qP6/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ixgbe_hw:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ixgbe_write_i2c_combined_generic_unlocked>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	mov.w	r12, #0x0
               	str.w	r12, [sp]
               	bl	0x1a <ixgbe_write_i2c_combined_generic_unlocked+0xe> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
