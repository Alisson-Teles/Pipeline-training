
/tmp/tmp.24eRtShkxD/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<advance_time>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r2, [r1]
               	add	r0, r2
               	str	r0, [r1]
               	pop	{r7, pc}
