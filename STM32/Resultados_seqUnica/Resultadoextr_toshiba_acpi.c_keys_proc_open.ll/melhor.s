
/tmp/tmp.NyfTEcSpOM/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<inode:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<file:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<keys_proc_open>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r5, [r1]
               	bl	0x28 <keys_proc_open+0x10> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	mov	r1, r5
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x36 <keys_proc_open+0x1e> @ imm = #-0x4
