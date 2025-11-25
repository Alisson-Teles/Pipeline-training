
/tmp/tmp.TZNPi1s8bh/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ntb_queue_list:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ntb_queue_entry:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mtx:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ntb_list_add>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r4, r2
               	mov	r5, r1
               	mov	r6, r0
               	bl	0x32 <ntb_list_add+0xe> @ imm = #-0x4
               	mov	r0, r4
               	mov	r1, r5
               	mov	r2, r5
               	bl	0x3c <ntb_list_add+0x18> @ imm = #-0x4
               	mov	r0, r6
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x4a <ntb_list_add+0x26> @ imm = #-0x4
