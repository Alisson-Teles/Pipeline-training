
/tmp/tmp.u0rzxm4GhK/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<pvr2_ctrl:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<pvr2_ctrl_set_value>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r2, r1
               	mov.w	r1, #0xffffffff
               	pop.w	{r7, lr}
               	b.w	0x1a <pvr2_ctrl_set_value+0xe> @ imm = #-0x4
