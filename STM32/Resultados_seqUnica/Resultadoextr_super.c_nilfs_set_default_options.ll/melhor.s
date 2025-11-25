
/tmp/tmp.9cvjHLPJ3g/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<nilfs_super_block:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<nilfs_sb_info:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<nilfs_set_default_options>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	orrs	r1, r2
               	str	r1, [r0]
               	pop	{r7, pc}
