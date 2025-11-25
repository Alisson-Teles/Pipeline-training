
/tmp/tmp.FQIgnxDfUc/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<pch_can_priv:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<pch_can_release>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r4, r0
               	bl	0x1c <pch_can_release+0x10> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	bl	0x2c <pch_can_release+0x20> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x0
               	bl	0x34 <pch_can_release+0x28> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x0
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x40 <pch_can_release+0x34> @ imm = #-0x4
