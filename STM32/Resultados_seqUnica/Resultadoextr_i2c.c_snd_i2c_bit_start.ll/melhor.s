
/tmp/tmp.s6HHNZrGVp/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<snd_i2c_bus:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<snd_i2c_bit_start>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <snd_i2c_bit_start+0x6> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x1
               	movs	r2, #0x1
               	bl	0x1c <snd_i2c_bit_start+0x10> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x1
               	movs	r2, #0x1
               	bl	0x26 <snd_i2c_bit_start+0x1a> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x1
               	movs	r2, #0x0
               	bl	0x30 <snd_i2c_bit_start+0x24> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x0
               	movs	r2, #0x0
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x3e <snd_i2c_bit_start+0x32> @ imm = #-0x4
