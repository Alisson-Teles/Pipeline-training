
/tmp/tmp.Dcka6gjiBc/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<MatchFinder_GetSubValue>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r2, #0x0
               	ldm	r0, {r0, r1}
               	movt	r2, #0x0
               	mvns	r1, r1
               	ldr	r2, [r2]
               	add	r0, r1
               	ands	r0, r2
               	pop	{r7, pc}
