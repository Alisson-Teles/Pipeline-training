
/tmp/tmp.q2QVmYdBMb/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<gelic_card:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<gelic_card_disable_txdmac>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <gelic_card_disable_txdmac+0x6> @ imm = #-0x4
               	mov	r5, r0
               	mov	r0, r4
               	bl	0x1a <gelic_card_disable_txdmac+0xe> @ imm = #-0x4
               	mov	r1, r0
               	mov	r0, r5
               	bl	0x22 <gelic_card_disable_txdmac+0x16> @ imm = #-0x4
               	cmp	r0, #0x0
               	it	eq
               	popeq	{r4, r5, r7, pc}
               	mov	r5, r0
               	mov	r0, r4
               	bl	0x30 <gelic_card_disable_txdmac+0x24> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r2, r5
               	movs	r3, #0x26
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x44 <gelic_card_disable_txdmac+0x38> @ imm = #-0x4
