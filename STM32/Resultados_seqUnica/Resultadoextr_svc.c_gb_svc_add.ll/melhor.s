
/tmp/tmp.cxGH5fR7KH/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<gb_svc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<gb_svc_add>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	pop.w	{r7, lr}
               	b.w	0x16 <gb_svc_add+0xa>   @ imm = #-0x4
