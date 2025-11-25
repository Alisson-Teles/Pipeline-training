
/tmp/tmp.Efb3YNfejr/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ov5645:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ov5645_set_saturation>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r2, #0x0
               	movt	r2, #0x0
               	mov	r4, r0
               	movs	r0, #0x40
               	ldr	r2, [r2]
               	add.w	r5, r0, r1, lsl #4
               	mov	r0, r4
               	mov	r1, r2
               	mov	r2, r5
               	bl	0x28 <ov5645_set_saturation+0x1c> @ imm = #-0x4
               	cmp.w	r0, #0xffffffff
               	it	le
               	pople	{r4, r5, r7, pc}
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	mov	r2, r5
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x46 <ov5645_set_saturation+0x3a> @ imm = #-0x4
