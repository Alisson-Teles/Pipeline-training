
/tmp/tmp.CUq6GzqxAt/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<adapter:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<_InitRxSetting>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movw	r5, #0x4321
               	ldr	r1, [r1]
               	movt	r5, #0x8765
               	mov	r2, r5
               	mov	r4, r0
               	bl	0x26 <_InitRxSetting+0x1a> @ imm = #-0x4
               	mov	r0, r4
               	mov.w	r1, #0x700
               	mov	r2, r5
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x36 <_InitRxSetting+0x2a> @ imm = #-0x4
