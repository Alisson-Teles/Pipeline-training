
/tmp/tmp.P5b4NQbah5/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<uart_bas:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ar933x_init>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x8
               	ldr.w	r12, [r7, #0x8]
               	mov	r4, r0
               	str.w	r12, [sp]
               	bl	0x1c <ar933x_init+0x10> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movs	r2, #0x0
               	bl	0x2e <ar933x_init+0x22> @ imm = #-0x4
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldr	r1, [r5]
               	mov	r0, r4
               	bl	0x3e <ar933x_init+0x32> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r2, [r1]
               	ldr	r1, [r5]
               	bic.w	r2, r0, r2
               	mov	r0, r4
               	bl	0x54 <ar933x_init+0x48> @ imm = #-0x4
               	mov	r0, r4
               	add	sp, #0x8
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x60 <ar933x_init+0x54> @ imm = #-0x4
