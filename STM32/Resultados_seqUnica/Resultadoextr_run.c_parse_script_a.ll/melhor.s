
/tmp/tmp.kL6q34wpqd/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<parse_script_a>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r2, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r3, r0
               	mov	r0, r1
               	mov	r1, r3
               	pop.w	{r7, lr}
               	b.w	0x1a <parse_script_a+0x1a> @ imm = #-0x4
