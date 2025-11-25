
/tmp/tmp.FgiEEcNsVY/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<get_ssa_alias_types>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r2, {r2, r3}
               	eors	r1, r3
               	eors	r0, r2
               	orrs	r0, r1
               	bne	0x46 <get_ssa_alias_types+0x46> @ imm = #0x2e
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	movw	r2, #0x0
               	orrs	r1, r0
               	movw	r0, #0x0
               	movw	r3, #0x0
               	movt	r0, #0x0
               	movt	r2, #0x0
               	movt	r3, #0x0
               	b	0x9a <get_ssa_alias_types+0x9a> @ imm = #0x52
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	movw	r2, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	orrs	r0, r1
               	movw	r1, #0x0
               	orrs	r0, r2
               	movt	r1, #0x0
               	movw	r2, #0x0
               	ldr	r1, [r1]
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	orrs	r0, r1
               	orr.w	r1, r0, r2
               	movw	r0, #0x0
               	movw	r2, #0x0
               	movw	r3, #0x0
               	movt	r0, #0x0
               	movt	r2, #0x0
               	movt	r3, #0x0
               	ldr	r3, [r3]
               	ldr	r2, [r2]
               	orrs	r1, r3
               	ldr	r0, [r0]
               	orrs	r1, r2
               	orrs	r0, r1
               	pop	{r7, pc}
