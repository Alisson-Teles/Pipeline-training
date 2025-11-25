
/tmp/tmp.Hia9yDxrDw/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<int_data:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<int_data_free>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldm	r0, {r0, r1}
               	orrs.w	r2, r0, r1
               	it	eq
               	popeq	{r7, pc}
               	pop.w	{r7, lr}
               	b.w	0x1e <int_data_free+0x12> @ imm = #-0x4
