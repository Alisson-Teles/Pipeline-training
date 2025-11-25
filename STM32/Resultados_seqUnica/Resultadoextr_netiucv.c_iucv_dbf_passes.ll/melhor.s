
/tmp/tmp.Riz0xkYUnE/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<iucv_dbf_passes>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	cmp	r1, r0
               	mov.w	r0, #0x0
               	it	le
               	movle	r0, #0x1
               	pop	{r7, pc}
