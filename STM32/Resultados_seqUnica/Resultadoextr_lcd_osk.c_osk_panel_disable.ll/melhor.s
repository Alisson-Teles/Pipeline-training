
/tmp/tmp.JNXrFBFHH3/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<lcd_panel:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<osk_panel_disable>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	movs	r0, #0x0
               	bl	0x1c <osk_panel_disable+0x10> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	movs	r0, #0x0
               	bl	0x2c <osk_panel_disable+0x20> @ imm = #-0x4
               	movs	r0, #0x2
               	movs	r1, #0x0
               	pop.w	{r7, lr}
               	b.w	0x38 <osk_panel_disable+0x2c> @ imm = #-0x4
