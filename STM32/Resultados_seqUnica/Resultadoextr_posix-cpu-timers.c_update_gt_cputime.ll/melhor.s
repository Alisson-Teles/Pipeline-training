
/tmp/tmp.gg1D4E9IDr/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<task_cputime:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<update_gt_cputime>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	mov	r5, r1
               	ldr	r0, [r1, #0xc]
               	ldr	r1, [r4, #0xc]
               	bl	0x1c <update_gt_cputime+0xc> @ imm = #-0x4
               	orrs	r0, r1
               	itt	ne
               	ldrne	r0, [r5, #0xc]
               	strne	r0, [r4, #0xc]
               	ldr	r0, [r5, #0x8]
               	ldr	r1, [r4, #0x8]
               	bl	0x2c <update_gt_cputime+0x1c> @ imm = #-0x4
               	orrs	r0, r1
               	itt	ne
               	ldrne	r0, [r5, #0x8]
               	strne	r0, [r4, #0x8]
               	ldrd	r0, r1, [r5]
               	ldrd	r2, r3, [r4]
               	subs	r2, r2, r0
               	sbcs.w	r2, r3, r1
               	it	lt
               	strdlt	r0, r1, [r4]
               	pop	{r4, r5, r7, pc}
