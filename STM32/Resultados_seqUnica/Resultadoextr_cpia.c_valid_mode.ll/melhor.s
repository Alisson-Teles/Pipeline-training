
/tmp/tmp.4DcD7K3feh/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<valid_mode>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r12, #0x0
               	movt	r12, #0x0
               	ldm.w	r12, {r12, lr}
               	eor.w	lr, lr, r1
               	eor.w	r12, r12, r0
               	orrs.w	r12, r12, lr
               	itt	eq
               	eoreq	r12, r2, #0x10
               	orrseq.w	r12, r12, r3
               	beq.w	0x13a <valid_mode+0x13a> @ imm = #0x110
               	movw	r12, #0x0
               	movt	r12, #0x0
               	ldm.w	r12, {r12, lr}
               	eor.w	lr, lr, r1
               	eor.w	r12, r12, r0
               	orrs.w	r12, r12, lr
               	itt	eq
               	eoreq	r12, r2, #0x10
               	orrseq.w	r12, r12, r3
               	beq	0x13a <valid_mode+0x13a> @ imm = #0xea
               	movw	r12, #0x0
               	movt	r12, #0x0
               	ldm.w	r12, {r12, lr}
               	orrs.w	r12, r12, lr
               	beq	0x13e <valid_mode+0x13e> @ imm = #0xdc
               	movw	r12, #0x0
               	movt	r12, #0x0
               	ldm.w	r12, {r12, lr}
               	eor.w	lr, lr, r1
               	eor.w	r12, r12, r0
               	orrs.w	r12, r12, lr
               	itt	eq
               	eoreq	r12, r2, #0x8
               	orrseq.w	r12, r12, r3
               	beq	0x13a <valid_mode+0x13a> @ imm = #0xb4
               	movw	r12, #0x0
               	movt	r12, #0x0
               	ldm.w	r12, {r12, lr}
               	eor.w	lr, lr, r1
               	eor.w	r12, r12, r0
               	orrs.w	r12, r12, lr
               	itt	eq
               	eoreq	r12, r2, #0x10
               	orrseq.w	r12, r12, r3
               	beq	0x13a <valid_mode+0x13a> @ imm = #0x90
               	movw	r12, #0x0
               	movt	r12, #0x0
               	ldm.w	r12, {r12, lr}
               	eor.w	lr, lr, r1
               	eor.w	r12, r12, r0
               	orrs.w	r12, r12, lr
               	itt	eq
               	eoreq	r12, r2, #0x10
               	orrseq.w	r12, r12, r3
               	beq	0x13a <valid_mode+0x13a> @ imm = #0x6c
               	movw	r12, #0x0
               	movt	r12, #0x0
               	ldm.w	r12, {r12, lr}
               	eor.w	lr, lr, r1
               	eor.w	r12, r12, r0
               	orrs.w	r12, r12, lr
               	itt	eq
               	eoreq	r12, r2, #0x18
               	orrseq.w	r12, r12, r3
               	beq	0x13a <valid_mode+0x13a> @ imm = #0x48
               	movw	r12, #0x0
               	movt	r12, #0x0
               	ldm.w	r12, {r12, lr}
               	eor.w	lr, lr, r1
               	eor.w	r12, r12, r0
               	orrs.w	r12, r12, lr
               	itt	eq
               	eoreq	r12, r2, #0x20
               	orrseq.w	r12, r12, r3
               	beq	0x13a <valid_mode+0x13a> @ imm = #0x24
               	movw	r12, #0x0
               	movt	r12, #0x0
               	ldm.w	r12, {r12, lr}
               	eor	r2, r2, #0x10
               	eor.w	r0, r0, r12
               	eor.w	r1, r1, lr
               	orrs	r1, r3
               	orrs	r0, r2
               	orrs	r0, r1
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	pop	{r7, pc}
               	movs	r0, #0x1
               	pop	{r7, pc}
               	movs	r0, #0x0
               	pop	{r7, pc}
