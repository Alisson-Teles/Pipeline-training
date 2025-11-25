
/tmp/tmp.HhboqWarhQ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<scsi_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mts_slave_configure>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	movw	r1, #0x1ff
               	bl	0x16 <mts_slave_configure+0xa> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r7, pc}
