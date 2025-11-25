
/tmp/tmp.U7CoL9Gu9o/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<debug_variable>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r2, r0
               	mov	r0, r1
               	mov	r1, r2
               	pop.w	{r7, lr}
               	b.w	0x18 <debug_variable+0x18> @ imm = #-0x4
