
/tmp/tmp.8rgq3lQuzD/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<dce110_link_encoder:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<dc_link_settings:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<configure_encoder>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x8
               	movw	r2, #0x0
               	movt	r2, #0x0
               	movw	r0, #0x0
               	movw	r12, #0x0
               	ldm.w	r1, {r1, lr}
               	ldrd	r3, r4, [r2]
               	movt	r0, #0x0
               	movt	r12, #0x0
               	ldr	r0, [r0]
               	ldr.w	r2, [r12]
               	subs	r3, r1, r3
               	sbc.w	r4, lr, r4
               	movs	r1, #0x0
               	strd	r3, r4, [sp]
               	bl	0x50 <configure_encoder+0x38> @ imm = #-0x4
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	movs	r2, #0x1
               	add	sp, #0x8
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x70 <configure_encoder+0x58> @ imm = #-0x4
