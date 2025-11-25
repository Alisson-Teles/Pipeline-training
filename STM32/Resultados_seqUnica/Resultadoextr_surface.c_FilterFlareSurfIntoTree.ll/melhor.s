
/tmp/tmp.WWPhhs3VU0/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_6__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<TYPE_7__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<FilterFlareSurfIntoTree>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r3, r0
               	ldr	r0, [r0]
               	ldr	r2, [r1]
               	mov	r1, r3
               	pop.w	{r7, lr}
               	b.w	0x28 <FilterFlareSurfIntoTree+0x10> @ imm = #-0x4
