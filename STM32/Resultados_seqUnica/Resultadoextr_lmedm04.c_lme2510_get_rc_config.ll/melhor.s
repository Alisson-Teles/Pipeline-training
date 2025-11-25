
/tmp/tmp.7ByjylX72P/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<dvb_usb_rc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<dvb_usb_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<lme2510_get_rc_config>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r2, [r0]
               	movs	r0, #0x0
               	str	r2, [r1]
               	pop	{r7, pc}
