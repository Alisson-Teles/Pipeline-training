
/tmp/tmp.RgzJ7bVxxo/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<php_output_stdout>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x8
               	mov	r4, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r3, [r1]
               	mov	r12, r2
               	movs	r1, #0x1
               	mov	r2, r4
               	str.w	r12, [sp]
               	bl	0x1c <php_output_stdout+0x1c> @ imm = #-0x4
               	mov	r0, r4
               	add	sp, #0x8
               	pop	{r4, r6, r7, pc}
