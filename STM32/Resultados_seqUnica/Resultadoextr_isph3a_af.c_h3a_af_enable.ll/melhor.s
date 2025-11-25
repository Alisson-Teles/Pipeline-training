
/tmp/tmp.lAxUzZ2FzG/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ispstat:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<h3a_af_enable>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movw	r3, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	movt	r3, #0x0
               	mov	r5, r0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	ldr	r3, [r3]
               	cbz	r4, 0x4e <h3a_af_enable+0x42> @ imm = #0x16
               	bl	0x36 <h3a_af_enable+0x2a> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r5]
               	ldr	r1, [r1]
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x4a <h3a_af_enable+0x3e> @ imm = #-0x4
               	bl	0x4e <h3a_af_enable+0x42> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r5]
               	ldr	r1, [r1]
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x62 <h3a_af_enable+0x56> @ imm = #-0x4
