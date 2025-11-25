
/tmp/tmp.VGUztxYasI/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<userdiff_driver:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<userdiff_find_by_name>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	mov	r5, r0
               	bl	0x14 <userdiff_find_by_name+0x8> @ imm = #-0x4
               	mov	r1, r0
               	mov	r0, r5
               	mov	r2, r4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x22 <userdiff_find_by_name+0x16> @ imm = #-0x4
