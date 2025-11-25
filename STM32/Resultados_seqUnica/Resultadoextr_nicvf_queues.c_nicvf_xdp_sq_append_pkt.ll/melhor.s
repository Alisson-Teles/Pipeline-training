
/tmp/tmp.x1JyI4BjCY/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<snd_queue:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<nicvf:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<nicvf_xdp_sq_append_pkt>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r10}
               	sub	sp, #0x8
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r5, [r0]
               	ldr	r0, [r1]
               	cmp	r5, r0
               	ble	0x36 <nicvf_xdp_sq_append_pkt+0x1e> @ imm = #0x2
               	movs	r0, #0x0
               	b	0x76 <nicvf_xdp_sq_append_pkt+0x5e> @ imm = #0x3e
               	mov	r4, r1
               	ldr.w	r8, [r7, #0x8]
               	mov	r0, r1
               	mov	r1, r5
               	mov	r10, r2
               	mov	r9, r3
               	bl	0x44 <nicvf_xdp_sq_append_pkt+0x2c> @ imm = #-0x4
               	mov	r6, r0
               	subs	r2, r5, #0x1
               	mov	r0, r4
               	mov	r1, r6
               	mov	r3, r10
               	str.w	r8, [sp]
               	bl	0x56 <nicvf_xdp_sq_append_pkt+0x3e> @ imm = #-0x4
               	mov	r0, r4
               	mov	r1, r6
               	bl	0x5e <nicvf_xdp_sq_append_pkt+0x46> @ imm = #-0x4
               	mov	r1, r0
               	mov	r0, r4
               	mov	r2, r8
               	mov	r3, r9
               	bl	0x6a <nicvf_xdp_sq_append_pkt+0x52> @ imm = #-0x4
               	ldr	r0, [r4, #0x4]
               	add	r0, r5
               	str	r0, [r4, #0x4]
               	movs	r0, #0x1
               	add	sp, #0x8
               	pop.w	{r8, r9, r10}
               	pop	{r4, r5, r6, r7, pc}
