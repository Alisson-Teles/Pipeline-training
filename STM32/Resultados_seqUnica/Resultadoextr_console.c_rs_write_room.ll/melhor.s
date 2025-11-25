
/tmp/tmp.ztSw2n9wjS/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<tty_struct:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<rs_write_room>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov.w	r0, #0x800
               	pop	{r7, pc}
