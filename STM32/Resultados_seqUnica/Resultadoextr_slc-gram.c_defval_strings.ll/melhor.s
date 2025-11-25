
/tmp/tmp.kfFftRU5Se/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<assignment:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<defval_strings>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x8
               	mov	r5, r0
               	movw	r1, #0x0
               	mov	r4, r2
               	movt	r1, #0x0
               	movs	r0, #0x1
               	mov	r2, r5
               	movs	r3, #0x18
               	str	r4, [sp]
               	bl	0x26 <defval_strings+0x1a> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movs	r0, #0x1
               	mov	r2, r5
               	movs	r3, #0x17
               	str	r4, [sp]
               	bl	0x3a <defval_strings+0x2e> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r4, r5, r7, pc}
