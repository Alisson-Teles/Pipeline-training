
/tmp/tmp.d6l4oqIOJn/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<lan743x_adapter:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<lan743x_otp_power_down>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldr	r1, [r5]
               	mov	r4, r0
               	bl	0x1c <lan743x_otp_power_down+0x10> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	tst	r1, r0
               	it	ne
               	popne	{r4, r5, r7, pc}
               	orr.w	r2, r1, r0
               	ldr	r1, [r5]
               	mov	r0, r4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x3c <lan743x_otp_power_down+0x30> @ imm = #-0x4
