
/tmp/tmp.UXTPTJUYVK/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<oxygen:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<xonar_d1_resume>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	mov	r4, r0
               	bl	0x26 <xonar_d1_resume+0x1a> @ imm = #-0x4
               	movs	r0, #0x1
               	bl	0x2c <xonar_d1_resume+0x20> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x32 <xonar_d1_resume+0x26> @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x3c <xonar_d1_resume+0x30> @ imm = #-0x4
