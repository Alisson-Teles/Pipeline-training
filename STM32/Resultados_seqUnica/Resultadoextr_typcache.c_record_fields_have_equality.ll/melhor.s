
/tmp/tmp.iLkxxxDYTg/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_4__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<record_fields_have_equality>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r4, r0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	tst	r1, r0
               	bne	0x28 <record_fields_have_equality+0x1c> @ imm = #0x4
               	mov	r0, r4
               	bl	0x24 <record_fields_have_equality+0x18> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r4]
               	ldr	r1, [r1]
               	ands	r0, r1
               	it	ne
               	movne	r0, #0x1
               	pop	{r4, r6, r7, pc}
