
/tmp/tmp.ZPVOclVKLy/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<MatchFinder_GetNumAvailableBytes>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldrd	r12, r2, [r0]
               	ldrd	r3, r1, [r0, #8]
               	subs.w	r0, r3, r12
               	sbcs	r1, r2
               	pop	{r7, pc}
