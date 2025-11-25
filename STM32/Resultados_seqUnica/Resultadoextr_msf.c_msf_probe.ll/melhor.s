
/tmp/tmp.53XELZo7Pc/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<msf_probe>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x8
               	mov	r4, r0
               	ldm	r0, {r0, r1}
               	movw	r2, #0x0
               	mov.w	r12, #0x3
               	movt	r2, #0x0
               	movs	r3, #0x3
               	str.w	r12, [sp]
               	bl	0x28 <msf_probe+0x1c>   @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x36 <msf_probe+0x2a>   @ imm = #0x4
               	movs	r0, #0x0
               	add	sp, #0x8
               	pop	{r4, r6, r7, pc}
               	ldrd	r0, r1, [r4]
               	adds	r0, #0x8
               	adc	r1, r1, #0x0
               	bl	0x40 <msf_probe+0x34>   @ imm = #-0x4
               	cmp	r0, #0x1
               	blt	0x30 <msf_probe+0x24>   @ imm = #-0x1a
               	ldrd	r0, r1, [r4]
               	adds	r0, #0x10
               	adc	r1, r1, #0x0
               	bl	0x52 <msf_probe+0x46>   @ imm = #-0x4
               	cmp	r0, #0x1
               	blt	0x30 <msf_probe+0x24>   @ imm = #-0x2c
               	ldrd	r0, r1, [r4]
               	adds	r0, #0x4
               	adc	r1, r1, #0x0
               	bl	0x64 <msf_probe+0x58>   @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	cmp	r0, #0x11
               	blt	0x8c <msf_probe+0x80>   @ imm = #0x14
               	movw	r0, #0x6667
               	movt	r0, #0x6666
               	smull	r0, r1, r1, r0
               	asrs	r0, r1, #0x1
               	add.w	r0, r0, r1, lsr #31
               	add	sp, #0x8
               	pop	{r4, r6, r7, pc}
               	movw	r0, #0x5556
               	movt	r0, #0x5555
               	smull	r0, r1, r1, r0
               	add.w	r0, r1, r1, lsr #31
               	lsls	r0, r0, #0x1
               	add	sp, #0x8
               	pop	{r4, r6, r7, pc}
