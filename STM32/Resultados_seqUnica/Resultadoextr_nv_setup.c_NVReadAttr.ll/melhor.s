
/tmp/tmp.EMUPAo8Gnw/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<nvidia_par:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	strd	r1, r1, [r0, #8]
               	strd	r1, r1, [r0, #16]
               	pop	{r7, pc}
               	nop

<NVReadAttr>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r5, r1
               	ldrd	r1, r3, [r0, #16]
               	mov	r4, r0
               	ldr	r0, [r0]
               	adds.w	r2, r1, #0xa
               	adc	r3, r3, #0x0
               	bl	0x2a <NVReadAttr+0x16>  @ imm = #-0x4
               	ldrd	r1, r3, [r4, #8]
               	ldr	r0, [r4]
               	orrs	r1, r3
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	bic	r2, r5, #0x20
               	it	eq
               	addeq	r2, #0x20
               	bl	0x48 <NVReadAttr+0x34>  @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r4]
               	ldrd	r2, r3, [r1]
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x5e <NVReadAttr+0x4a>  @ imm = #-0x4
