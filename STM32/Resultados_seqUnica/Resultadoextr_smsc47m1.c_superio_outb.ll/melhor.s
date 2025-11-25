
/tmp/tmp.lpYfr3zMFh/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<superio_outb>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	bl	0x10 <superio_outb+0x10> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x24 <superio_outb+0x24> @ imm = #-0x4
