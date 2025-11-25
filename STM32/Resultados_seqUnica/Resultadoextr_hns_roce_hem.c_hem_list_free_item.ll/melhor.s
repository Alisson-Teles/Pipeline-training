
/tmp/tmp.YNxA00ReAw/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<roce_hem_item:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<hns_roce_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<hem_list_free_item>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	cbz	r2, 0x40 <hem_list_free_item+0x24> @ imm = #0x1a
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr.w	r12, [r1]
               	ldrd	r1, r3, [r4]
               	ldr	r0, [r0]
               	ldr	r2, [r4, #0x8]
               	mul	r1, r12, r1
               	bl	0x3c <hem_list_free_item+0x20> @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x46 <hem_list_free_item+0x2a> @ imm = #-0x4
