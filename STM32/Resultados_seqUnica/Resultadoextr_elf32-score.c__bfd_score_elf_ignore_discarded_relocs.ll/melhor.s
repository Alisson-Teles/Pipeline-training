
/tmp/tmp.DjpZIekas8/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<_bfd_score_elf_ignore_discarded_relocs>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movs	r2, #0x4
               	bl	0x1c <_bfd_score_elf_ignore_discarded_relocs+0x10> @ imm = #-0x4
               	movw	r3, #0x0
               	movw	r2, #0x0
               	movt	r3, #0x0
               	orrs	r0, r1
               	movt	r2, #0x0
               	it	eq
               	moveq	r3, r2
               	ldr	r0, [r3]
               	pop	{r7, pc}
