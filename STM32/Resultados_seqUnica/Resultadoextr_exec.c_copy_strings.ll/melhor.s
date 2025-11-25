
/tmp/tmp.zCMLz0qQFP/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<copy_strings>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r5, r1
               	mov	r6, r0
               	mov	r0, r1
               	mov	r1, r2
               	mov	r4, r2
               	bl	0x12 <copy_strings+0x12> @ imm = #-0x4
               	subs	r6, r6, r0
               	mov	r2, r0
               	mov	r0, r6
               	mov	r1, r5
               	mov	r3, r4
               	bl	0x20 <copy_strings+0x20> @ imm = #-0x4
               	orrs	r0, r1
               	it	ne
               	movne	r6, #0x0
               	mov	r0, r6
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
