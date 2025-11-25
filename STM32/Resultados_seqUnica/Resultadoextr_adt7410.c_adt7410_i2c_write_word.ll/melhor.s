
/tmp/tmp.eONkZwkHn5/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<adt7410_i2c_write_word>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r2
               	mov	r5, r1
               	bl	0x14 <adt7410_i2c_write_word+0x8> @ imm = #-0x4
               	mov	r1, r5
               	mov	r2, r4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x20 <adt7410_i2c_write_word+0x14> @ imm = #-0x4
