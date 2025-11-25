
/tmp/tmp.yK7wZ3wmfk/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<number:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<normalize>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r4, r3
               	ldrd	r1, r3, [r0]
               	mov	r5, r2
               	mov	r6, r0
               	ldr	r0, [r0, #0x8]
               	subs	r2, r2, r1
               	sbc.w	r3, r4, r3
               	bl	0x2a <normalize+0x1a>   @ imm = #-0x4
               	strd	r5, r4, [r6]
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
