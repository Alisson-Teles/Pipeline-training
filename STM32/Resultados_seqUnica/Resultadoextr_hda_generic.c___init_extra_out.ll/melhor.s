
/tmp/tmp.8O8KS29Ra2/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<hda_codec:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<__init_extra_out>:
               	cmp	r1, #0x1
               	it	lt
               	bxlt	lr
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r4, r1
               	mov	r5, r0
               	subs	r6, r2, #0x4
               	ldr	r1, [r6, #4]!
               	mov	r0, r5
               	bl	0x26 <__init_extra_out+0x1a> @ imm = #-0x4
               	subs	r4, #0x1
               	bne	0x20 <__init_extra_out+0x14> @ imm = #-0x10
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	bx	lr
