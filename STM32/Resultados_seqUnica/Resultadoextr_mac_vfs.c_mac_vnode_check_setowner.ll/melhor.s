
/tmp/tmp.Ra0HWB0E0B/saida.o:	file format elf32-littlearm

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

<mac_vnode_check_setowner>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r11}
               	sub	sp, #0x8
               	mov	r6, r1
               	movw	r1, #0x0
               	mov	r5, r2
               	mov	r4, r0
               	movt	r1, #0x0
               	mov	r0, r6
               	movs	r2, #0x18
               	mov	r8, r3
               	bl	0x36 <mac_vnode_check_setowner+0x1e> @ imm = #-0x4
               	movw	r9, #0x0
               	movt	r9, #0x0
               	ldr.w	r0, [r9]
               	ldr	r3, [r6]
               	mov	r1, r4
               	mov	r2, r6
               	strd	r5, r8, [sp]
               	bl	0x50 <mac_vnode_check_setowner+0x38> @ imm = #-0x4
               	ldr.w	r0, [r9]
               	movs	r1, #0x0
               	mov	r2, r4
               	mov	r3, r6
               	strd	r5, r8, [sp]
               	bl	0x62 <mac_vnode_check_setowner+0x4a> @ imm = #-0x4
               	movs	r0, #0x0
               	add	sp, #0x8
               	pop.w	{r8, r9, r11}
               	pop	{r4, r5, r6, r7, pc}
