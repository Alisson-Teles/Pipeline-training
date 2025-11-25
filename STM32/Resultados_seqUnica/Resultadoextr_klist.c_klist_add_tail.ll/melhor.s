
/tmp/tmp.xcJIh6OEw4/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<klist_node:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<klist:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<klist_add_tail>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r5, r0
               	mov	r4, r1
               	mov	r0, r1
               	mov	r1, r5
               	bl	0x24 <klist_add_tail+0xc> @ imm = #-0x4
               	mov	r0, r4
               	mov	r1, r5
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x30 <klist_add_tail+0x18> @ imm = #-0x4
