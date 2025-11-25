
/tmp/tmp.bs6pynsUAh/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<kuhl_m_sekurlsa_nt5_isOld>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r12, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movw	lr, #0x0
               	ldrd	r4, r5, [r0]
               	movt	lr, #0x0
               	ldr.w	r0, [lr]
               	eors	r1, r5
               	eor.w	r5, r12, r4
               	orrs	r1, r5
               	it	ne
               	popne	{r4, r5, r7, pc}
               	movw	r1, #0x1640
               	movt	r1, #0x4990
               	eors	r1, r2
               	orrs	r1, r3
               	bne	0x44 <kuhl_m_sekurlsa_nt5_isOld+0x44> @ imm = #0xa
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop	{r4, r5, r7, pc}
               	movw	r5, #0xa63
               	movw	r1, #0x0
               	movt	r5, #0x45d7
               	movt	r1, #0x0
               	subs	r2, r2, r5
               	ldr	r1, [r1]
               	sbcs	r2, r3, #0x0
               	it	lt
               	movlt	r0, r1
               	pop	{r4, r5, r7, pc}
