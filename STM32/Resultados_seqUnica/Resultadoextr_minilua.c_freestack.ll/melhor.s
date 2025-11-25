
/tmp/tmp.IW9ASTmYMl/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_5__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<freestack>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r3, #0x0
               	movt	r3, #0x0
               	mov	r4, r1
               	ldrd	r2, r1, [r1, #8]
               	ldr	r3, [r3]
               	mov	r5, r0
               	bl	0x26 <freestack+0x16>   @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldrd	r2, r1, [r4]
               	ldr	r3, [r0]
               	mov	r0, r5
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x3e <freestack+0x2e>   @ imm = #-0x4
