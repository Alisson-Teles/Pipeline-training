
/tmp/tmp.6xigndFTNR/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<usb_xfer:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<usbd_xfer_set_timeout>:
               	push	{r7, lr}
               	mov	r7, sp
               	str	r1, [r0]
               	pop	{r7, pc}
