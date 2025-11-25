
/tmp/tmp.WDPN1z4s6o/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<platform_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<usb_phy_generic_unregister>:
               	push	{r7, lr}
               	mov	r7, sp
               	pop.w	{r7, lr}
               	b.w	0x14 <usb_phy_generic_unregister+0x8> @ imm = #-0x4
