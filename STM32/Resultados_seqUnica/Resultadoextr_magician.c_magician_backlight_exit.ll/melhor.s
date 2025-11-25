
/tmp/tmp.AvEBjFx8H9/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<magician_backlight_exit>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	bl	0x1a <magician_backlight_exit+0xe> @ imm = #-0x4
               	pop.w	{r7, lr}
               	b.w	0x22 <magician_backlight_exit+0x16> @ imm = #-0x4
