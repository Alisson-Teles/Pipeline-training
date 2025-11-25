
/tmp/tmp.6sYUJ5H9wU/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<qpi_attach>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r4, [r1]
               	mov	r5, r0
               	cmp	r4, #0x0
               	bmi	0x22 <qpi_attach+0x22>  @ imm = #0xc
               	mov	r0, r5
               	mov	r1, r4
               	bl	0x18 <qpi_attach+0x18>  @ imm = #-0x4
               	subs	r4, #0x1
               	adds	r0, r4, #0x1
               	bne	0x14 <qpi_attach+0x14>  @ imm = #-0x10
               	mov	r0, r5
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x28 <qpi_attach+0x28>  @ imm = #-0x4
