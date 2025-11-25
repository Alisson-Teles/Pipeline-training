
/tmp/tmp.w72dTRCQkg/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<DSA_security_bits>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r1, [r0, #0xc]
               	ldr	r0, [r0, #0x8]
               	orrs.w	r2, r0, r1
               	ittee	ne
               	ldrdne	r2, r3, [r4]
               	orrsne.w	r2, r2, r3
               	moveq.w	r0, #0xffffffff
               	popeq	{r4, r6, r7, pc}
               	bl	0x2e <DSA_security_bits+0x1e> @ imm = #-0x4
               	ldrd	r2, r1, [r4]
               	mov	r4, r0
               	mov	r0, r2
               	bl	0x3a <DSA_security_bits+0x2a> @ imm = #-0x4
               	mov	r1, r0
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x46 <DSA_security_bits+0x36> @ imm = #-0x4
