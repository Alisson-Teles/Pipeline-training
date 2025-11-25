
/tmp/tmp.lwZnZscCs1/saida.o:	file format elf32-littlearm

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

<show_test_oa_id>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	mov	r0, r2
               	movt	r1, #0x0
               	mov	r2, r3
               	movs	r3, #0x2
               	pop.w	{r7, lr}
               	b.w	0x2e <show_test_oa_id+0x16> @ imm = #-0x4
