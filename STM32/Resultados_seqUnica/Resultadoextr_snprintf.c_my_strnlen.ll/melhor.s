
/tmp/tmp.S8s7ecm2hC/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<my_strnlen>:
               	cmp	r1, #0x1
               	blt	0x4e <my_strnlen+0x4e>  @ imm = #0x48
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	rsb.w	r12, r1, #0x0
               	sub.w	lr, r1, #0x1
               	movs	r2, #0x0
               	ldrb	r3, [r0, r2]
               	cbz	r3, 0x3c <my_strnlen+0x3c> @ imm = #0x24
               	cmp	lr, r2
               	beq	0x4a <my_strnlen+0x4a>  @ imm = #0x2e
               	adds	r3, r0, r2
               	ldrb	r4, [r3, #0x1]
               	cbz	r4, 0x40 <my_strnlen+0x40> @ imm = #0x1e
               	add.w	r4, r12, r2
               	adds	r5, r4, #0x2
               	beq	0x4a <my_strnlen+0x4a>  @ imm = #0x20
               	ldrb	r5, [r3, #0x2]
               	cbz	r5, 0x44 <my_strnlen+0x44> @ imm = #0x16
               	adds	r4, #0x3
               	beq	0x4a <my_strnlen+0x4a>  @ imm = #0x18
               	ldrb	r3, [r3, #0x3]
               	cbz	r3, 0x48 <my_strnlen+0x48> @ imm = #0x12
               	adds	r2, #0x4
               	cmp	r1, r2
               	bne	0x12 <my_strnlen+0x12>  @ imm = #-0x2a
               	b	0x4a <my_strnlen+0x4a>  @ imm = #0xc
               	mov	r1, r2
               	b	0x4a <my_strnlen+0x4a>  @ imm = #0x8
               	adds	r1, r2, #0x1
               	b	0x4a <my_strnlen+0x4a>  @ imm = #0x4
               	adds	r1, r2, #0x2
               	b	0x4a <my_strnlen+0x4a>  @ imm = #0x0
               	adds	r1, r2, #0x3
               	pop.w	{r4, r5, r7, lr}
               	mov	r0, r1
               	bx	lr
