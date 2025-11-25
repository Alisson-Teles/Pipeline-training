
/tmp/tmp.ClCtNOzA7o/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<rtl_hal:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<set_hal_start>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	str	r1, [r0]
               	pop	{r7, pc}
