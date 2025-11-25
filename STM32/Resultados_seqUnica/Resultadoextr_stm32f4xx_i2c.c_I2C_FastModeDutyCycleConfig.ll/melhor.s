
/tmp/tmp.23TovR61TO/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_4__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<I2C_FastModeDutyCycleConfig>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r5, r1
               	mov	r4, r0
               	bl	0x14 <I2C_FastModeDutyCycleConfig+0x8> @ imm = #-0x4
               	bl	0x18 <I2C_FastModeDutyCycleConfig+0xc> @ imm = #-0x4
               	mov	r0, r5
               	bl	0x1e <I2C_FastModeDutyCycleConfig+0x12> @ imm = #-0x4
               	bl	0x22 <I2C_FastModeDutyCycleConfig+0x16> @ imm = #-0x4
               	movw	r2, #0x0
               	movw	r0, #0x0
               	movt	r2, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r4]
               	ldr	r2, [r2]
               	ldr	r0, [r0]
               	ands	r2, r1
               	cmp	r5, r0
               	it	eq
               	orreq.w	r2, r1, r0
               	str	r2, [r4]
               	pop	{r4, r5, r7, pc}
