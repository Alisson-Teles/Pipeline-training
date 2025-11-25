
/tmp/tmp.q6KGM6cGJ7/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<math_div>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	mov	r4, r3
               	mov	r5, r2
               	mov	r8, r1
               	mov	r6, r0
               	bl	0x10 <math_div+0x10>    @ imm = #-0x4
               	umull	r2, r3, r0, r5
               	mla	r3, r0, r4, r3
               	subs	r2, r6, r2
               	mla	r3, r1, r5, r3
               	sbc.w	r2, r8, r3
               	asrs	r3, r2, #0x1f
               	adds.w	r0, r0, r2, asr #31
               	adcs	r1, r3
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
