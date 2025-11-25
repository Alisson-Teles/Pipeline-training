
/tmp/tmp.MiUguKTaBm/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<device_attribute:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<show_risetime>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	mov	r12, r3
               	movw	r3, #0x0
               	movt	r3, #0x0
               	ldr	r3, [r3]
               	str.w	r12, [sp]
               	bl	0x2e <show_risetime+0x16> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
