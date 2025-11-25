
/tmp/tmp.x6hklSzwR0/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_8__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<TYPE_9__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<discharge2anyreg>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldrd	r2, r3, [r1]
               	ldr	r4, [r5, #0x4]
               	ldr	r5, [r5]
               	eors	r3, r4
               	eors	r2, r5
               	orrs	r2, r3
               	it	eq
               	popeq	{r4, r5, r7, pc}
               	mov	r5, r1
               	movs	r1, #0x1
               	mov	r4, r0
               	bl	0x3c <discharge2anyreg+0x24> @ imm = #-0x4
               	ldrd	r0, r1, [r4]
               	subs	r2, r0, #0x1
               	sbc	r3, r1, #0x0
               	mov	r0, r4
               	mov	r1, r5
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x52 <discharge2anyreg+0x3a> @ imm = #-0x4
