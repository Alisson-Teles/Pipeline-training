
/tmp/tmp.LS8a4wlJ7j/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<sub_word>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x20
               	mov	r4, sp
               	strd	r0, r0, [sp]
               	strd	r0, r0, [sp, #8]
               	strd	r0, r0, [sp, #16]
               	strd	r0, r0, [sp, #24]
               	mov	r0, r4
               	movs	r1, #0x8
               	bl	0x1c <sub_word+0x1c>    @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x8
               	bl	0x24 <sub_word+0x24>    @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x8
               	bl	0x2c <sub_word+0x2c>    @ imm = #-0x4
               	ldr	r0, [sp], #32
               	pop	{r4, r6, r7, pc}
