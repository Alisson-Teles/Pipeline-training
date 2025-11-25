
/tmp/tmp.NAgyA7x0LB/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<devfs_ref_node>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r1, [r0]
               	adds	r1, #0x1
               	str	r1, [r0]
               	pop	{r7, pc}
