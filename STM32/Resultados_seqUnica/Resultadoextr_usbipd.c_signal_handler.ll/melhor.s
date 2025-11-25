
/tmp/tmp.R83G3wWhJb/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<signal_handler>:
               	push	{r7, lr}
               	mov	r7, sp
               	bl	0x4 <signal_handler+0x4> @ imm = #-0x4
               	mov	r1, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movs	r2, #0x14
               	pop.w	{r7, lr}
               	b.w	0x18 <signal_handler+0x18> @ imm = #-0x4
