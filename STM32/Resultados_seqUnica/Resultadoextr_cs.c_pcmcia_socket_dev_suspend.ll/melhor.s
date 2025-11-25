
/tmp/tmp.yQxiqNnTuF/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<pcmcia_socket_dev_suspend>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	bl	0x1a <pcmcia_socket_dev_suspend+0xe> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r7, pc}
