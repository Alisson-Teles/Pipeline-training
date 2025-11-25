
/tmp/tmp.fs7OAfxHYZ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<imx7_csi:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<imx7_csi_hw_disable_irq>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldr	r1, [r5]
               	mov	r4, r0
               	bl	0x1c <imx7_csi_hw_disable_irq+0x10> @ imm = #-0x4
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	movw	r3, #0x0
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	movt	r3, #0x0
               	ldr	r3, [r3]
               	orrs	r1, r2
               	movw	r2, #0x0
               	orrs	r1, r3
               	movt	r2, #0x0
               	movw	r3, #0x0
               	ldr	r2, [r2]
               	movt	r3, #0x0
               	ldr	r3, [r3]
               	orrs	r1, r2
               	orrs	r1, r3
               	ldr	r2, [r5]
               	bic.w	r1, r0, r1
               	mov	r0, r4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x66 <imx7_csi_hw_disable_irq+0x5a> @ imm = #-0x4
