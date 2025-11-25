
/tmp/tmp.ViN6aW3hRd/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<close_cb>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	adds	r1, #0x1
               	str	r1, [r0]
               	pop	{r7, pc}
