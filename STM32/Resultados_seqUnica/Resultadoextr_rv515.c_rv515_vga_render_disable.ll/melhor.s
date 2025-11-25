
/tmp/tmp.LPr978rPPI/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<radeon_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<rv515_vga_render_disable>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r4, [r0]
               	mov	r0, r4
               	bl	0x1c <rv515_vga_render_disable+0x10> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	ands	r1, r0
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x32 <rv515_vga_render_disable+0x26> @ imm = #-0x4
