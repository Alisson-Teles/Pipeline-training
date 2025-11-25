
/tmp/tmp.DXjTrHA7jy/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<n2rng:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<n2rng_control_check>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r0, [r0]
               	cmp	r0, #0x1
               	blt	0x32 <n2rng_control_check+0x26> @ imm = #0x18
               	movs	r5, #0x0
               	nop
               	mov	r0, r4
               	mov	r1, r5
               	bl	0x20 <n2rng_control_check+0x14> @ imm = #-0x4
               	cmp	r0, #0x0
               	it	ne
               	popne	{r4, r5, r7, pc}
               	ldr	r0, [r4]
               	adds	r5, #0x1
               	cmp	r5, r0
               	blt	0x1c <n2rng_control_check+0x10> @ imm = #-0x18
               	movs	r0, #0x0
               	pop	{r4, r5, r7, pc}
