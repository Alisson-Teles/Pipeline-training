
/tmp/tmp.x98CFBpcNp/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<nitrox_softreq:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<softreq_destroy>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <softreq_destroy+0x6> @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x1c <softreq_destroy+0x10> @ imm = #-0x4
