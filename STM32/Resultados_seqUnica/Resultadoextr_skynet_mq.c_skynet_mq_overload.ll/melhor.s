
/tmp/tmp.tWRvvNrrx0/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<message_queue:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<skynet_mq_overload>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r1, r0
               	ldr	r0, [r0]
               	cmp	r0, #0x0
               	itt	ne
               	movne	r2, #0x0
               	strne	r2, [r1]
               	pop	{r7, pc}
