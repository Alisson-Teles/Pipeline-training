
/tmp/tmp.iwWAX679yq/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<sane_iscase>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r5, r0
               	bl	0x12 <sane_iscase+0x12> @ imm = #-0x4
               	ubfx	r1, r5, #0x5, #0x1
               	cmp	r4, #0x0
               	it	eq
               	eoreq	r1, r1, #0x1
               	cmp	r0, #0x0
               	it	ne
               	movne	r0, r1
               	pop	{r4, r5, r7, pc}
