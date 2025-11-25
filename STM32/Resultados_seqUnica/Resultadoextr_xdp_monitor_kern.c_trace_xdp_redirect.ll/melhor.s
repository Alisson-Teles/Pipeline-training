
/tmp/tmp.rqO1eE4Rdj/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<xdp_redirect_ctx:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<trace_xdp_redirect>:
               	push	{r7, lr}
               	mov	r7, sp
               	pop.w	{r7, lr}
               	b.w	0x14 <trace_xdp_redirect+0x8> @ imm = #-0x4
