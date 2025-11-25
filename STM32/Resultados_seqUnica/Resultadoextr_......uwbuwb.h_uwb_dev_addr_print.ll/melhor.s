
/tmp/tmp.wMHoll7aq9/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<uwb_dev_addr:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<uwb_dev_addr_print>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	ldr	r2, [r2]
               	mov	r12, r3
               	movs	r3, #0x0
               	str.w	r12, [sp]
               	bl	0x1c <uwb_dev_addr_print+0x10> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
