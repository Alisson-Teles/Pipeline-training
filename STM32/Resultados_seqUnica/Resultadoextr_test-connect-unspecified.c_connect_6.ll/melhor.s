
/tmp/tmp.oP7J8KgGca/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<connect_6>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	subs	r0, r1, r0
               	it	ne
               	movne	r0, #0x1
               	pop.w	{r7, lr}
               	b.w	0x18 <connect_6+0x18>   @ imm = #-0x4
