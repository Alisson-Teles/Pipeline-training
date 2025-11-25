
/tmp/tmp.bsJTzIAqyB/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<tipc_msg:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<msg_importance>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <msg_importance+0x6> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r5, r0
               	cmp	r0, r1
               	ble	0x2a <msg_importance+0x1e> @ imm = #0x2
               	movs	r0, #0x0
               	b	0x36 <msg_importance+0x2a> @ imm = #0xa
               	mov	r0, r4
               	bl	0x2c <msg_importance+0x20> @ imm = #-0x4
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	bl	0x36 <msg_importance+0x2a> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x42 <msg_importance+0x36> @ imm = #0x2
               	mov	r0, r5
               	pop	{r4, r5, r7, pc}
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	cmp	r5, r0
               	beq	0x6c <msg_importance+0x60> @ imm = #0x1a
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	cmp	r5, r0
               	beq	0x6c <msg_importance+0x60> @ imm = #0xc
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r5, [r0]
               	mov	r0, r5
               	pop	{r4, r5, r7, pc}
               	mov	r0, r4
               	movs	r1, #0x9
               	movs	r2, #0x0
               	movs	r3, #0x7
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x78 <msg_importance+0x6c> @ imm = #-0x4
