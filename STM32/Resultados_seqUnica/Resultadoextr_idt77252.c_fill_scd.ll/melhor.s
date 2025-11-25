
/tmp/tmp.ls9c0EP7IK/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<scq_info:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}
               	nop

<idt77252_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<fill_scd>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	sub	sp, #0x8
               	mov	r5, r1
               	ldr	r1, [r1]
               	ldrd	r2, r3, [r5, #8]
               	mov	r4, r0
               	str	r1, [sp]
               	bl	0x32 <fill_scd+0x16>    @ imm = #-0x4
               	ldrd	r0, r1, [r5, #8]
               	movs	r6, #0x0
               	adds	r2, r0, #0x1
               	adc	r3, r1, #0x0
               	mov	r0, r4
               	str	r6, [sp]
               	bl	0x46 <fill_scd+0x2a>    @ imm = #-0x4
               	ldrd	r0, r1, [r5, #8]
               	adds	r2, r0, #0x2
               	adc	r3, r1, #0x0
               	mov.w	r1, #0xffffffff
               	mov	r0, r4
               	str	r1, [sp]
               	bl	0x5c <fill_scd+0x40>    @ imm = #-0x4
               	ldrd	r0, r1, [r5, #8]
               	str	r6, [sp]
               	adds	r2, r0, #0x3
               	adc	r3, r1, #0x0
               	mov	r0, r4
               	bl	0x6e <fill_scd+0x52>    @ imm = #-0x4
               	add	sp, #0x8
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
