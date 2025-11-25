
/tmp/tmp.COeAz8wrww/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_4__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<journalHdrOffset>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	ldr	r4, [r0]
               	mov	r5, r0
               	mov.w	r8, #0x0
               	cbz	r4, 0x36 <journalHdrOffset+0x2a> @ imm = #0x16
               	mov	r0, r5
               	subs	r6, r4, #0x1
               	bl	0x22 <journalHdrOffset+0x16> @ imm = #-0x4
               	sdiv	r0, r6, r0
               	adds	r6, r0, #0x1
               	mov	r0, r5
               	bl	0x2e <journalHdrOffset+0x22> @ imm = #-0x4
               	muls	r6, r0, r6
               	b	0x38 <journalHdrOffset+0x2c> @ imm = #0x0
               	movs	r6, #0x0
               	mov	r0, r5
               	bl	0x3a <journalHdrOffset+0x2e> @ imm = #-0x4
               	sdiv	r1, r6, r0
               	mls	r0, r1, r0, r6
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	bl	0x4c <journalHdrOffset+0x40> @ imm = #-0x4
               	movs	r0, #0x0
               	cmp	r6, r4
               	it	ge
               	movge	r0, #0x1
               	bl	0x58 <journalHdrOffset+0x4c> @ imm = #-0x4
               	mov	r0, r5
               	subs	r4, r6, r4
               	bl	0x60 <journalHdrOffset+0x54> @ imm = #-0x4
               	cmp	r4, r0
               	it	lt
               	movlt.w	r8, #0x1
               	mov	r0, r8
               	bl	0x6e <journalHdrOffset+0x62> @ imm = #-0x4
               	mov	r0, r6
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
