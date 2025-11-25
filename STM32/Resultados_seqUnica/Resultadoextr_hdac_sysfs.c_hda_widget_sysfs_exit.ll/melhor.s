
/tmp/tmp.xNs4CDKNIY/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<hdac_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<hda_widget_sysfs_exit>:
               	push	{r7, lr}
               	mov	r7, sp
               	pop.w	{r7, lr}
               	b.w	0x14 <hda_widget_sysfs_exit+0x8> @ imm = #-0x4
