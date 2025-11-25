
/tmp/tmp.opzYiTzO61/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<vnode:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ucred:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mac_system_check_swapoff>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r4, r1
               	movw	r1, #0x0
               	mov	r5, r0
               	movt	r1, #0x0
               	mov	r0, r4
               	movs	r2, #0x18
               	bl	0x30 <mac_system_check_swapoff+0x18> @ imm = #-0x4
               	movw	r6, #0x0
               	movt	r6, #0x0
               	ldr	r0, [r6]
               	ldr	r3, [r4]
               	mov	r1, r5
               	mov	r2, r4
               	bl	0x44 <mac_system_check_swapoff+0x2c> @ imm = #-0x4
               	ldr	r0, [r6]
               	movs	r1, #0x0
               	mov	r2, r5
               	mov	r3, r4
               	bl	0x50 <mac_system_check_swapoff+0x38> @ imm = #-0x4
               	movs	r0, #0x0
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
