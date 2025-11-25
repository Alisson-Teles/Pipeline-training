
/tmp/tmp.Dage42I7Vj/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<nperror>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x8
               	movw	r2, #0x0
               	movw	r4, #0x0
               	movt	r2, #0x0
               	movt	r4, #0x0
               	ldrd	r12, r3, [r2]
               	ldr	r2, [r4, #0x4]
               	ldr	r4, [r4]
               	orrs	r2, r3
               	orr.w	r3, r12, r4
               	orrs	r2, r3
               	beq	0x54 <nperror+0x54>     @ imm = #0x2a
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	mov	r4, r0
               	mov	r0, r2
               	mov	r5, r1
               	bl	0x38 <nperror+0x38>     @ imm = #-0x4
               	mov	r2, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	mov	r1, r4
               	movs	r3, #0x5
               	str	r5, [sp]
               	bl	0x4c <nperror+0x4c>     @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r4, r5, r7, pc}
               	add	sp, #0x8
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x5a <nperror+0x5a>     @ imm = #-0x4
