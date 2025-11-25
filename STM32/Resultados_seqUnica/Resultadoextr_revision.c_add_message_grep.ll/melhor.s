
/tmp/tmp.1LqkzWSnHu/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<rev_info:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<add_message_grep>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r3, r2
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	pop.w	{r7, lr}
               	b.w	0x20 <add_message_grep+0x14> @ imm = #-0x4
