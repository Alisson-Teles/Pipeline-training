
/tmp/tmp.6tGlBqamZo/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<qib_devdata:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	strd	r1, r1, [r0, #8]
               	str	r1, [r0, #0x10]
               	pop	{r7, pc}

<qib_7322_tidtemplate>:
               	ldr	r1, [r0]
               	cmp.w	r1, #0x800
               	beq	0x28 <qib_7322_tidtemplate+0x18> @ imm = #0xe
               	cmp.w	r1, #0x1000
               	bne	0x3c <qib_7322_tidtemplate+0x2c> @ imm = #0x1c
               	movw	r1, #0x0
               	movt	r1, #0x0
               	b	0x30 <qib_7322_tidtemplate+0x20> @ imm = #0x6
               	movw	r1, #0x0
               	movt	r1, #0x0
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r1, [r1]
               	str	r1, [r0, #0x10]
               	pop.w	{r7, lr}
               	movs	r1, #0x0
               	strd	r1, r1, [r0, #8]
               	bx	lr
