
/tmp/tmp.53OfqvQcUh/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<vt_buf:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<vtbuf_lock>:
               	push	{r7, lr}
               	mov	r7, sp
               	pop.w	{r7, lr}
               	b.w	0x14 <vtbuf_lock+0x8>   @ imm = #-0x4
