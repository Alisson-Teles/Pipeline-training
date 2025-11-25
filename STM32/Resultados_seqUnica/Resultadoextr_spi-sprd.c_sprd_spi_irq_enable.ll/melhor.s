
/tmp/tmp.dhNi4ldjx8/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<sprd_spi:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<sprd_spi_irq_enable>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r6, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr.w	r12, [r0]
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldrd	r2, r3, [r6]
               	ldrd	r4, r5, [r0]
               	ldr	r1, [r1]
               	adds	r2, r2, r4
               	orr.w	r0, r1, r12
               	adcs	r3, r5
               	bl	0x44 <sprd_spi_irq_enable+0x38> @ imm = #-0x4
               	movw	r4, #0x0
               	movt	r4, #0x0
               	ldrd	r0, r1, [r6]
               	ldrd	r2, r3, [r4]
               	adds	r0, r0, r2
               	adcs	r1, r3
               	bl	0x5c <sprd_spi_irq_enable+0x50> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	ldrd	r2, r3, [r6]
               	orrs	r0, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldrd	r6, r5, [r4]
               	ldr	r1, [r1]
               	adds	r2, r2, r6
               	orr.w	r0, r0, r1
               	adcs	r3, r5
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x8e <sprd_spi_irq_enable+0x82> @ imm = #-0x4
