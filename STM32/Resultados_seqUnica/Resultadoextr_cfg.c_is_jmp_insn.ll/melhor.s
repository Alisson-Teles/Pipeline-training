
/tmp/tmp.hJ58nT7ToQ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<is_jmp_insn>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x6 <is_jmp_insn+0x6>   @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r2, {r2, r3}
               	eors	r1, r3
               	eors	r0, r2
               	orrs	r0, r1
               	itt	eq
               	moveq	r0, #0x1
               	popeq	{r4, r6, r7, pc}
               	mov	r0, r4
               	bl	0x22 <is_jmp_insn+0x22> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r2, {r2, r3}
               	eors	r1, r3
               	eors	r0, r2
               	orrs	r0, r1
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	pop	{r4, r6, r7, pc}
