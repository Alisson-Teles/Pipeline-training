
/tmp/tmp.cP6oNc786j/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_4__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<I2C_ClearFlag>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	mov	r5, r0
               	bl	0x14 <I2C_ClearFlag+0x8> @ imm = #-0x4
               	bl	0x18 <I2C_ClearFlag+0xc> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x1e <I2C_ClearFlag+0x12> @ imm = #-0x4
               	bl	0x22 <I2C_ClearFlag+0x16> @ imm = #-0x4
               	str	r4, [r5]
               	pop	{r4, r5, r7, pc}
