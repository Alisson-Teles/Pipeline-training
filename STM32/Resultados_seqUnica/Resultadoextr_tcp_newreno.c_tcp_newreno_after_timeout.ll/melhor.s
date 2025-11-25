
/tmp/tmp.coEkhcFj3D/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<tcpcb:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	strd	r1, r1, [r0, #16]
               	pop	{r7, pc}

<tcp_newreno_after_timeout>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r3, #0x0
               	movt	r3, #0x0
               	ldrd	r1, r2, [r0]
               	ldm	r3, {r3, r4}
               	subs	r1, r1, r3
               	sbcs.w	r1, r2, r4
               	it	lt
               	poplt	{r4, r6, r7, pc}
               	ldr	r2, [r0, #0x14]
               	ldr	r1, [r0, #0x8]
               	mov	r4, r0
               	mov	r0, r2
               	bl	0x38 <tcp_newreno_after_timeout+0x24> @ imm = #-0x4
               	add.w	r0, r0, r0, lsr #31
               	ldr	r1, [r4, #0xc]
               	asrs	r0, r0, #0x1
               	sdiv	r0, r0, r1
               	cmp	r0, #0x2
               	it	le
               	movle	r0, #0x2
               	muls	r0, r1, r0
               	str	r0, [r4, #0x10]
               	mov	r0, r4
               	str	r1, [r4, #0x8]
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x5a <tcp_newreno_after_timeout+0x46> @ imm = #-0x4
