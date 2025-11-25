
/tmp/tmp.bZfl8gxy1w/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<set_current_access_from_decl>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x6 <set_current_access_from_decl+0x6> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x18 <set_current_access_from_decl+0x18> @ imm = #0x8
               	movw	r0, #0x0
               	movt	r0, #0x0
               	b	0x34 <set_current_access_from_decl+0x34> @ imm = #0x1a
               	mov	r0, r4
               	bl	0x1a <set_current_access_from_decl+0x1a> @ imm = #-0x4
               	orrs	r0, r1
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	it	eq
               	moveq	r0, r1
               	ldr	r0, [r0]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	str	r0, [r1]
               	pop	{r4, r6, r7, pc}
