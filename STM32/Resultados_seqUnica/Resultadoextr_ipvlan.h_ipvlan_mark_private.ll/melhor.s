
/tmp/tmp.tfOq33mdQH/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ipvl_port:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ipvlan_mark_private>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r0]
               	ldr	r2, [r2]
               	orrs	r1, r2
               	str	r1, [r0]
               	pop	{r7, pc}
