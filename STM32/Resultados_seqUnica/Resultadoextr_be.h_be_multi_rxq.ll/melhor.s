
/tmp/tmp.XpC0QIoCtz/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<be_adapter:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<be_multi_rxq>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	cmp	r0, #0x1
               	mov.w	r0, #0x0
               	it	gt
               	movgt	r0, #0x1
               	pop	{r7, pc}
