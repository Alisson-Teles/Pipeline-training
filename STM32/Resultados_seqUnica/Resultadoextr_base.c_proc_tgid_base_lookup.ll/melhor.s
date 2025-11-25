
/tmp/tmp.mGiVEQVQzq/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<nameidata:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<inode:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<dentry:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<proc_tgid_base_lookup>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r4, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r5, [r1]
               	mov	r6, r0
               	mov	r0, r5
               	bl	0x3c <proc_tgid_base_lookup+0x18> @ imm = #-0x4
               	mov	r3, r0
               	mov	r0, r6
               	mov	r1, r4
               	mov	r2, r5
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x50 <proc_tgid_base_lookup+0x2c> @ imm = #-0x4
