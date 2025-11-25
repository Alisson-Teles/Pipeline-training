
/tmp/tmp.EDfKNnFzmc/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_4__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<AIEnter_Battle_Retreat>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x10
               	mov	r3, r1
               	mov	r4, r0
               	movs	r0, #0x0
               	movs	r1, #0xe
               	mov	r12, r2
               	strd	r1, r0, [sp]
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	mov	r0, r4
               	str.w	r12, [sp, #0x8]
               	bl	0x36 <AIEnter_Battle_Retreat+0x2a> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	str	r0, [r4]
               	add	sp, #0x10
               	pop	{r4, r6, r7, pc}
