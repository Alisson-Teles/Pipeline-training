
/tmp/tmp.TVCdjeJ2iC/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<pcf50633:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<pcf50633_irq_mask>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r0, [r0]
               	mov	r5, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r2, r5
               	movs	r3, #0xf
               	bl	0x22 <pcf50633_irq_mask+0x16> @ imm = #-0x4
               	mov	r0, r4
               	mov	r1, r5
               	movs	r2, #0x1
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x30 <pcf50633_irq_mask+0x24> @ imm = #-0x4
