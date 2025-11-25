
/tmp/tmp.ChKiMNBeUm/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<vpfe_resume>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov.w	r0, #0xffffffff
               	pop	{r7, pc}
