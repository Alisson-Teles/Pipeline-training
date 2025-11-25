
/tmp/tmp.toY6QkBqIr/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<device_driver:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<sdebug_no_uld_show>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x8
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr.w	lr, [r0]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	mov	r12, r2
               	ldr	r3, [r0]
               	movw	r2, #0x0
               	mov	r0, r1
               	movs	r4, #0x3
               	movt	r2, #0x0
               	mov	r1, lr
               	strd	r12, r4, [sp]
               	bl	0x3c <sdebug_no_uld_show+0x30> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r4, r6, r7, pc}
