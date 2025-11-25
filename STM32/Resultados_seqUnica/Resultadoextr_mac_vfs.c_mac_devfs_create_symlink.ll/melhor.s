
/tmp/tmp.LOvUQhWzoT/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ucred:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mount:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<devfs_dirent:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mac_devfs_create_symlink>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x10
               	mov	lr, r1
               	movw	r1, #0x0
               	mov	r12, r2
               	movt	r1, #0x0
               	ldr	r2, [r1]
               	ldr.w	r4, [r12]
               	ldr	r5, [r3]
               	mov	r1, r0
               	strd	r4, r3, [sp]
               	mov	r0, r2
               	mov	r2, lr
               	mov	r3, r12
               	str	r5, [sp, #0x8]
               	bl	0x4c <mac_devfs_create_symlink+0x28> @ imm = #-0x4
               	add	sp, #0x10
               	pop	{r4, r5, r7, pc}
