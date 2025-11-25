
/tmp/tmp.OTV8UAOSTQ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_4__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<buffer_need_bytes>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldm	r0, {r0, r2}
               	mov	r5, r1
               	subs	r0, r0, r2
               	cmp	r0, r1
               	mov.w	r0, #0x0
               	it	lo
               	movlo	r0, #0x1
               	bl	0x22 <buffer_need_bytes+0x16> @ imm = #-0x4
               	orrs	r0, r1
               	it	eq
               	popeq	{r4, r5, r7, pc}
               	mov	r0, r4
               	mov	r1, r5
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x34 <buffer_need_bytes+0x28> @ imm = #-0x4
