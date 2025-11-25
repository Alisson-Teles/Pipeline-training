
/tmp/tmp.svcf0iIYoI/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ringbuf_t:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ringbuf_is_full>:
               	push	{r7, lr}
               	mov	r7, sp
               	bl	0x10 <ringbuf_is_full+0x4> @ imm = #-0x4
               	orrs	r0, r1
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	pop	{r7, pc}
