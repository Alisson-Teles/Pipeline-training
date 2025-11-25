
/tmp/tmp.f7RXiYVWzN/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<DotumChe_Bold_Init>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x6 <DotumChe_Bold_Init+0x6> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r2, {r2, r3}
               	eors	r3, r1
               	eors	r2, r0
               	orrs	r2, r3
               	it	ne
               	popne	{r4, r6, r7, pc}
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r2, [r0]
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x38 <DotumChe_Bold_Init+0x38> @ imm = #-0x4
