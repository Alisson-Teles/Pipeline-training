
/tmp/tmp.jJCGnRkAml/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<scheme_supports_labels>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r2, r4
               	movs	r3, #0x3
               	mov	r5, r0
               	bl	0x14 <scheme_supports_labels+0x14> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x38 <scheme_supports_labels+0x38> @ imm = #0x1a
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r5
               	mov	r2, r4
               	movs	r3, #0x3
               	bl	0x2a <scheme_supports_labels+0x2a> @ imm = #-0x4
               	orrs	r0, r1
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	pop	{r4, r5, r7, pc}
               	movs	r0, #0x1
               	pop	{r4, r5, r7, pc}
