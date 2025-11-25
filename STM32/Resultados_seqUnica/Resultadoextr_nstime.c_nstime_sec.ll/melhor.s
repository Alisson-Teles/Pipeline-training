
/tmp/tmp.haJHb79C7A/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<nstime_sec>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	sdiv	r0, r0, r1
               	pop	{r7, pc}
