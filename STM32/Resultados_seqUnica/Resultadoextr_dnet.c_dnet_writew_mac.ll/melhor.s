
/tmp/tmp.LHSID4tGru/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<dnet:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<dnet_writew_mac>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r3, r2
               	ldr	r2, [r1]
               	mov	r1, r3
               	mov	r5, r0
               	bl	0x22 <dnet_writew_mac+0x16> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movw	r1, #0x0
               	ldr	r0, [r0]
               	movt	r1, #0x0
               	ldr	r2, [r1]
               	orr.w	r1, r0, r4
               	mov	r0, r5
               	bl	0x40 <dnet_writew_mac+0x34> @ imm = #-0x4
               	mov.w	r0, #0x1f4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x4c <dnet_writew_mac+0x40> @ imm = #-0x4
