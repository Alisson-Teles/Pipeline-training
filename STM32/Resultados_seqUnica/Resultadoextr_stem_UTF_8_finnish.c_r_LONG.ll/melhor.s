
/tmp/tmp.ya5MGwZ7qr/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<SN_env:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<r_LONG>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	movs	r2, #0x7
               	bl	0x1c <r_LONG+0x10>      @ imm = #-0x4
               	cmp	r0, #0x0
               	it	ne
               	movne	r0, #0x1
               	pop	{r7, pc}
