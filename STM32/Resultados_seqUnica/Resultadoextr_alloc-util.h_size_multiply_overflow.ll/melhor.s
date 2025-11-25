
/tmp/tmp.U369KwcymD/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<size_multiply_overflow>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r2, r0
               	mov.w	r0, #0x0
               	cbz	r1, 0x20 <size_multiply_overflow+0x20> @ imm = #0x12
               	movw	r3, #0x0
               	movt	r3, #0x0
               	ldr	r3, [r3]
               	udiv	r1, r3, r1
               	cmp	r2, r1
               	it	hi
               	movhi	r0, #0x1
               	pop.w	{r7, lr}
               	b.w	0x24 <size_multiply_overflow+0x24> @ imm = #-0x4
