
/tmp/tmp.QAnak9Dbgu/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<uiCheckboxSetText>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	ldr	r0, [r0]
               	mov	r4, r2
               	mov	r5, r1
               	bl	0x16 <uiCheckboxSetText+0xa> @ imm = #-0x4
               	mov	r1, r5
               	mov	r2, r4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x22 <uiCheckboxSetText+0x16> @ imm = #-0x4
