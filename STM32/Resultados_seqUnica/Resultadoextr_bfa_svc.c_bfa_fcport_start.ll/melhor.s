
/tmp/tmp.BkOKAUIjaz/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<bfa_s:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<bfa_fcport_start>:
               	push	{r7, lr}
               	mov	r7, sp
               	bl	0x10 <bfa_fcport_start+0x4> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	pop.w	{r7, lr}
               	b.w	0x22 <bfa_fcport_start+0x16> @ imm = #-0x4
