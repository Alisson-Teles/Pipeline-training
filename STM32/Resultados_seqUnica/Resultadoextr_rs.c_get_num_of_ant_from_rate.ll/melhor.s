
/tmp/tmp.S9sETBEFGP/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<get_num_of_ant_from_rate>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movw	r2, #0x0
               	ldr	r1, [r1]
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	ands	r1, r0
               	movw	r3, #0x0
               	it	ne
               	movne	r1, #0x1
               	ands	r2, r0
               	movt	r3, #0x0
               	it	ne
               	movne	r2, #0x1
               	ldr	r3, [r3]
               	eors	r1, r2
               	ands	r0, r3
               	it	ne
               	movne	r0, #0x1
               	eors	r0, r1
               	pop	{r7, pc}
