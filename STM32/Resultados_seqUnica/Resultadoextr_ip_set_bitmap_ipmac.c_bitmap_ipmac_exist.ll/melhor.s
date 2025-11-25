
/tmp/tmp.q6rlEwvucn/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ipmac_telem:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<bitmap_ipmac_exist>:
               	movw	r3, #0x0
               	movt	r3, #0x0
               	ldrd	r12, r2, [r0]
               	ldr	r1, [r3, #0x4]
               	ldr	r3, [r3]
               	eors	r1, r2
               	eor.w	r3, r3, r12
               	orrs	r1, r3
               	itt	eq
               	moveq	r0, #0x1
               	bxeq	lr
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldm	r1, {r1, r3}
               	eors	r2, r3
               	eor.w	r1, r1, r12
               	orrs	r1, r2
               	itt	ne
               	movne	r0, #0x0
               	bxne	lr
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0, #0x8]
               	bl	0x4c <bitmap_ipmac_exist+0x3c> @ imm = #-0x4
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	pop	{r7, pc}
