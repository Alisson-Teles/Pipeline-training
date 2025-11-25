
/tmp/tmp.FdmRqy4m5k/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<make_dev_args:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<make_dev_args_init_impl>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	mov	r5, r0
               	bl	0x14 <make_dev_args_init_impl+0x8> @ imm = #-0x4
               	str	r4, [r5]
               	pop	{r4, r5, r7, pc}
