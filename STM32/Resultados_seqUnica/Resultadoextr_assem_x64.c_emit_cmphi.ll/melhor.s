
/tmp/tmp.YOlbm1qc72/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<emit_cmphi>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r5, r1
               	mov	r6, r0
               	mov	r0, r2
               	mvn	r1, #0x1
               	mov	r4, r2
               	bl	0x14 <emit_cmphi+0x14>  @ imm = #-0x4
               	mov	r0, r6
               	mov	r1, r5
               	bl	0x1c <emit_cmphi+0x1c>  @ imm = #-0x4
               	movs	r0, #0x0
               	mov	r1, r4
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x2c <emit_cmphi+0x2c>  @ imm = #-0x4
