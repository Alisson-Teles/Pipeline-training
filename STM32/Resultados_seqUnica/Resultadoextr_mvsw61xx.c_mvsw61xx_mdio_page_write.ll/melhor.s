
/tmp/tmp.pxcnWL9Uq4/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<switch_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mvsw61xx_mdio_page_write>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r11}
               	movw	r9, #0x0
               	movt	r9, #0x0
               	mov	r8, r3
               	mov	r3, r2
               	ldr.w	r2, [r9]
               	ldr	r6, [r7, #0x8]
               	mov	r5, r1
               	mov	r4, r0
               	bl	0x2a <mvsw61xx_mdio_page_write+0x1e> @ imm = #-0x4
               	mov	r0, r4
               	mov	r1, r5
               	mov	r2, r8
               	mov	r3, r6
               	bl	0x36 <mvsw61xx_mdio_page_write+0x2a> @ imm = #-0x4
               	ldr.w	r2, [r9]
               	mov	r0, r4
               	mov	r1, r5
               	movs	r3, #0x0
               	pop.w	{r8, r9, r11}
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x4c <mvsw61xx_mdio_page_write+0x40> @ imm = #-0x4
