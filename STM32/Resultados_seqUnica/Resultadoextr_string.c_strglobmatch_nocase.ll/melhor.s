
/tmp/tmp.rR7njleY4x/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<strglobmatch_nocase>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	mov	r12, r3
               	mov	lr, r2
               	movs	r2, #0x0
               	movs	r3, #0x1
               	strd	lr, r12, [sp]
               	bl	0x12 <strglobmatch_nocase+0x12> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
