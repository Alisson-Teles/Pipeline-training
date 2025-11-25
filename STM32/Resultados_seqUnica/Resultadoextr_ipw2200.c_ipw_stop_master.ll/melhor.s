
/tmp/tmp.mQh2yogEwa/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ipw_priv:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ipw_stop_master>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movs	r1, #0x3
               	bl	0x1c <ipw_stop_master+0x10> @ imm = #-0x4
               	movw	r5, #0x0
               	movw	r0, #0x0
               	movt	r5, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r5]
               	ldr	r2, [r0]
               	mov	r0, r4
               	bl	0x36 <ipw_stop_master+0x2a> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r5]
               	ldr	r2, [r0]
               	mov	r0, r4
               	movs	r3, #0x64
               	bl	0x4a <ipw_stop_master+0x3e> @ imm = #-0x4
               	cmp	r0, #0x0
               	bmi	0x68 <ipw_stop_master+0x5c> @ imm = #0x14
               	mov	r4, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	mov	r1, r4
               	movs	r2, #0x11
               	bl	0x60 <ipw_stop_master+0x54> @ imm = #-0x4
               	mov	r0, r4
               	pop	{r4, r5, r7, pc}
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movs	r1, #0x28
               	bl	0x72 <ipw_stop_master+0x66> @ imm = #-0x4
               	mov.w	r0, #0xffffffff
               	pop	{r4, r5, r7, pc}
