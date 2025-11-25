
/tmp/tmp.qZJSv4ZBjE/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<label:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<test_posixsem_destroy_label>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	bl	0x1a <test_posixsem_destroy_label+0xe> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop.w	{r7, lr}
               	b.w	0x2c <test_posixsem_destroy_label+0x20> @ imm = #-0x4
