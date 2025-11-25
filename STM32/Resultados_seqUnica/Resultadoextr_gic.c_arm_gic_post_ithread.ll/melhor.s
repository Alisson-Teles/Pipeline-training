
/tmp/tmp.UfXcKiVwug/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<intr_irqsrc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<arm_gic_post_ithread>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r5, r0
               	movs	r0, #0x0
               	mov	r4, r1
               	bl	0x16 <arm_gic_post_ithread+0xa> @ imm = #-0x4
               	mov	r0, r5
               	mov	r1, r4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x22 <arm_gic_post_ithread+0x16> @ imm = #-0x4
