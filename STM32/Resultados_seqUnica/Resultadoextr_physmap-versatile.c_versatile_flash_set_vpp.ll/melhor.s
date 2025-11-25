
/tmp/tmp.wXBBRRwwxn/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<map_info:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<versatile_flash_set_vpp>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r3, r1
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	movs	r2, #0x1
               	cmp	r3, #0x0
               	it	ne
               	movne	r3, #0x1
               	bl	0x2e <versatile_flash_set_vpp+0x22> @ imm = #-0x4
               	cmp	r0, #0x0
               	it	eq
               	popeq	{r7, pc}
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movs	r1, #0x1c
               	pop.w	{r7, lr}
               	b.w	0x46 <versatile_flash_set_vpp+0x3a> @ imm = #-0x4
