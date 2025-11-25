
/tmp/tmp.i12yyszeyP/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<callchain_node:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<callchain_cumul_hits>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldrd	r12, r2, [r0]
               	ldrd	r3, r1, [r0, #8]
               	adds.w	r0, r12, r3
               	adcs	r1, r2
               	pop	{r7, pc}
