
/tmp/tmp.s7asuebB53/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<spinaphore:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}
               	nop

<spinaphore_init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r2, #0x0
               	strd	r2, r2, [r0, #8]
               	str	r1, [r0]
               	pop	{r7, pc}
