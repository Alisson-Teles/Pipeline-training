
/tmp/tmp.w9rNJ6eciy/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<tcrypt_test>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x8
               	mov	r4, r1
               	mov	r5, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	mov	r1, r5
               	movs	r2, #0xb
               	mov	r3, r4
               	bl	0x18 <tcrypt_test+0x18> @ imm = #-0x4
               	mov	r0, r5
               	mov	r1, r5
               	movs	r2, #0x0
               	movs	r3, #0x0
               	str	r4, [sp]
               	str	r4, [sp, #0x4]
               	bl	0x28 <tcrypt_test+0x28> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	movw	r1, #0x0
               	ldr	r2, [r2]
               	movt	r1, #0x0
               	ldm	r1, {r1, r3}
               	rsbs	r2, r2, #0
               	subs	r2, r0, r2
               	it	ne
               	movne	r2, r0
               	orrs	r1, r3
               	it	ne
               	movne	r0, r2
               	add	sp, #0x8
               	pop	{r4, r5, r7, pc}
