
/tmp/tmp.yTvA9Geq0K/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<extent_buffer:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<btrfs_item:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<btrfs_file_extent_inline_item_len>:
               	push	{r7, lr}
               	mov	r7, sp
               	bl	0x1c <btrfs_file_extent_inline_item_len+0x4> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r2, {r2, r3}
               	subs	r0, r0, r2
               	sbcs	r1, r3
               	pop	{r7, pc}
