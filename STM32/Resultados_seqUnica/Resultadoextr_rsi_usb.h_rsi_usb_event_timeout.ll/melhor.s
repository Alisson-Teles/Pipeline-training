
/tmp/tmp.doHH9bvcb4/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<rsi_hw:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<rsi_usb_event_timeout>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop	{r7, pc}
