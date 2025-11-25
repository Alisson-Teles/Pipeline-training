
/tmp/tmp.IqbXGzDxbn/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<lcd_panel:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<omap3beagle_panel_disable>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	movs	r1, #0x0
               	pop.w	{r7, lr}
               	b.w	0x20 <omap3beagle_panel_disable+0x14> @ imm = #-0x4
