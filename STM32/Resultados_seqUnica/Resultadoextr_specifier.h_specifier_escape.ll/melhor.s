
/tmp/tmp.zFjsxVe4UO/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<specifier_escape>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	mov	r3, r1
               	movw	r1, #0x0
               	movw	r2, #0x0
               	mov.w	r12, #0x2
               	mov.w	lr, #0x1
               	movt	r1, #0x0
               	movt	r2, #0x0
               	strd	lr, r12, [sp]
               	bl	0x24 <specifier_escape+0x24> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
