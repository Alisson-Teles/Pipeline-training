
/tmp/tmp.ntXvKljJ00/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<clocksource:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<pxa_read_oscr>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop	{r7, pc}
