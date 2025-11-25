
/tmp/tmp.lmrA7tQjCs/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<RecordFreeIndexPage>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r2, {r2, r3}
               	subs	r2, #0x1
               	sbc	r3, r3, #0x0
               	pop.w	{r7, lr}
               	b.w	0x18 <RecordFreeIndexPage+0x18> @ imm = #-0x4
