
/tmp/tmp.43y2lfLXV8/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<event:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<event_init>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	movw	r3, #0x0
               	mov.w	r12, #0x5
               	movt	r3, #0x0
               	str.w	r12, [sp]
               	bl	0x2c <event_init+0x20>  @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
