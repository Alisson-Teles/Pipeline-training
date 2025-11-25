
/tmp/tmp.az8TQaRn8X/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<get_html_path>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x8
               	mov	r12, r3
               	mov	lr, r2
               	mov	r3, r1
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	mov	r4, r0
               	mov	r0, r3
               	mov	r3, r4
               	strd	r12, lr, [sp]
               	bl	0x2a <get_html_path+0x2a> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r4, r6, r7, pc}
