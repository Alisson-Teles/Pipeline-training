
/tmp/tmp.LCexaQqnie/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<__udivsi3>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	mov.w	r12, #0x0
               	str.w	r12, [sp]
               	bl	0xe <__udivsi3+0xe>     @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
