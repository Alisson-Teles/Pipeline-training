
/tmp/tmp.YEUcAUnGHV/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<led_classdev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<led_get_brightness>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	pop	{r7, pc}
