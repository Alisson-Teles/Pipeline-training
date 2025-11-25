
/tmp/tmp.nDiJtplVOE/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<xsm_register>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x6 <xsm_register+0x6>  @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r2, [r0]
               	mov	r0, r4
               	bl	0x20 <xsm_register+0x20> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r2, [r0]
               	mov	r0, r4
               	bl	0x3a <xsm_register+0x3a> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x4e <xsm_register+0x4e> @ imm = #-0x4
