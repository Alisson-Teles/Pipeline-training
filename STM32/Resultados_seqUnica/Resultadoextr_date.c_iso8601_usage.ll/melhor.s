
/tmp/tmp.E5Crpo3Sqm/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<iso8601_usage>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	mov	r12, r1
               	movw	r1, #0x0
               	mov	r2, r0
               	movt	r1, #0x0
               	movs	r0, #0x1
               	movs	r3, #0x1c
               	str.w	r12, [sp]
               	bl	0x1a <iso8601_usage+0x1a> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
