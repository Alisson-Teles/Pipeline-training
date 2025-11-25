
/tmp/tmp.5DzIGuJdFZ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<pt1:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<pt1_init_streams>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	movw	r6, #0x0
               	movt	r6, #0x0
               	ldr	r1, [r6]
               	cmp	r1, #0x1
               	blt	0x3a <pt1_init_streams+0x2e> @ imm = #0x16
               	mov	r4, r0
               	movs	r5, #0x0
               	nop
               	mov	r0, r4
               	mov	r1, r5
               	movs	r2, #0x0
               	bl	0x2e <pt1_init_streams+0x22> @ imm = #-0x4
               	ldr	r0, [r6]
               	adds	r5, #0x1
               	cmp	r5, r0
               	blt	0x28 <pt1_init_streams+0x1c> @ imm = #-0x14
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
