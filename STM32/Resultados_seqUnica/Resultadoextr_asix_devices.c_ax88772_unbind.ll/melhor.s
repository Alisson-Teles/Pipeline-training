
/tmp/tmp.K5xDIfRuaB/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<usbnet:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<usb_interface:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ax88772_unbind>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r0, [r0]
               	bl	0x20 <ax88772_unbind+0x8> @ imm = #-0x4
               	ldr	r0, [r4]
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x2a <ax88772_unbind+0x12> @ imm = #-0x4
