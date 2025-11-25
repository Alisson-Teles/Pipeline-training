
/tmp/tmp.ZDVTCmTppz/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<sk_buff:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<cw1200_txpriv:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	str	r1, [r0, #0x10]
               	pop	{r7, pc}
               	nop

<cw1200_common:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<cw1200_skb_dtor>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r4, r1
               	ldr	r1, [r2, #0x10]
               	mov	r5, r0
               	mov	r0, r4
               	mov	r6, r2
               	bl	0x3e <cw1200_skb_dtor+0x12> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldrd	r0, r1, [r6]
               	ldm	r2, {r2, r3}
               	eors	r1, r3
               	eors	r0, r2
               	orrs	r0, r1
               	beq	0x6e <cw1200_skb_dtor+0x42> @ imm = #0x14
               	ldrd	r3, r2, [r6, #8]
               	mov	r0, r5
               	mov	r1, r4
               	bl	0x60 <cw1200_skb_dtor+0x34> @ imm = #-0x4
               	ldrd	r2, r3, [r6]
               	mov	r0, r5
               	bl	0x6a <cw1200_skb_dtor+0x3e> @ imm = #-0x4
               	ldr	r0, [r5]
               	mov	r1, r4
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x7a <cw1200_skb_dtor+0x4e> @ imm = #-0x4
