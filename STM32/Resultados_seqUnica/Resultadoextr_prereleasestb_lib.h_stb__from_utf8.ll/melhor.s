
/tmp/tmp.K9ns6XaDlE/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<stb__from_utf8>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	sub.w	sp, sp, #0x4000
               	sub	sp, #0x8
               	add	r6, sp, #0x8
               	mov	r4, r1
               	mov	r5, r0
               	mov	r0, r6
               	mov.w	r1, #0x4000
               	bl	0x1a <stb__from_utf8+0x1a> @ imm = #-0x4
               	mov	r0, r6
               	mov	r1, r5
               	mov.w	r2, #0x1000
               	mov.w	r3, #0x1000
               	str	r4, [sp]
               	bl	0x2c <stb__from_utf8+0x2c> @ imm = #-0x4
               	add.w	sp, sp, #0x4000
               	add	sp, #0x8
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
