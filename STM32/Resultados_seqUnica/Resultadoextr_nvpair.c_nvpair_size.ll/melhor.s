
/tmp/tmp.NA3AzZ4BAF/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_4__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<nvpair_size>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <nvpair_size+0x6>  @ imm = #-0x4
               	ldr	r0, [r4]
               	pop	{r4, r6, r7, pc}
