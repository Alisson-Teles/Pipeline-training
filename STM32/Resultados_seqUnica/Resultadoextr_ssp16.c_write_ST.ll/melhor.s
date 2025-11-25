
/tmp/tmp.05o05eXqCE/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<write_ST>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x6 <write_ST+0x6>      @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	str	r4, [r0]
               	pop	{r4, r6, r7, pc}
