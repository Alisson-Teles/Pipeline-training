
/tmp/tmp.TTgbA4FSvP/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<tcic_aux_getw>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldr	r1, [r5]
               	mov	r4, r0
               	mov	r0, r1
               	bl	0x12 <tcic_aux_getw+0x12> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	ands	r1, r0
               	ldr	r0, [r5]
               	orrs	r1, r4
               	bl	0x26 <tcic_aux_getw+0x26> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x38 <tcic_aux_getw+0x38> @ imm = #-0x4
