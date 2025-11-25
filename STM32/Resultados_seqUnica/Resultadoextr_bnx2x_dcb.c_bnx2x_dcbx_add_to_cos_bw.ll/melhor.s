
/tmp/tmp.jojEriIHDJ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<cos_entry_help_data:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<bnx2x:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<bnx2x_dcbx_add_to_cos_bw>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldrd	lr, r12, [r1]
               	ldm	r0, {r0, r4}
               	eor.w	r4, r4, r12
               	eor.w	r0, r0, lr
               	orr.w	r5, r0, r4
               	adds.w	r4, r2, lr
               	adc.w	r0, r3, r12
               	cmp	r5, #0x0
               	itt	eq
               	moveq	r0, r3
               	moveq	r4, r2
               	strd	r4, r0, [r1]
               	pop	{r4, r5, r7, pc}
