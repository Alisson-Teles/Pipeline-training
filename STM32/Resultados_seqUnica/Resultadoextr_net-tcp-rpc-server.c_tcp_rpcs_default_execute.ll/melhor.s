
/tmp/tmp.jCMWCbUeOL/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<raw_message:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<connection:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<tcp_rpcs_default_execute>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	sub	sp, #0x68
               	mov	r5, r2
               	ldr	r2, [r0, #0x4]
               	ldr	r4, [r5]
               	mov	r6, r1
               	movw	r1, #0x0
               	mov	r8, r0
               	mov.w	r12, #0x23
               	movt	r1, #0x0
               	movs	r0, #0x1
               	mov	r3, r6
               	strd	r4, r12, [sp]
               	bl	0x40 <tcp_rpcs_default_execute+0x28> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	cmp	r6, r0
               	bne	0xb2 <tcp_rpcs_default_execute+0x9a> @ imm = #0x5e
               	ldr	r0, [r5]
               	cmp	r0, #0xc
               	bne	0xb2 <tcp_rpcs_default_execute+0x9a> @ imm = #0x58
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	add	r6, sp, #0x38
               	str.w	r0, [r8]
               	mov	r0, r6
               	movs	r1, #0x30
               	bl	0x6c <tcp_rpcs_default_execute+0x54> @ imm = #-0x4
               	mov	r0, r5
               	mov	r1, r6
               	movs	r2, #0xc
               	movs	r3, #0xc
               	bl	0x78 <tcp_rpcs_default_execute+0x60> @ imm = #-0x4
               	subs	r0, #0xc
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	bl	0x84 <tcp_rpcs_default_execute+0x6c> @ imm = #-0x4
               	add	r5, sp, #0x8
               	mov	r0, r5
               	movs	r1, #0x30
               	bl	0x8e <tcp_rpcs_default_execute+0x76> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	mov	r2, r5
               	str	r0, [sp, #0x8]
               	ldrd	r0, r1, [sp, #60]
               	movs	r3, #0xc
               	strd	r0, r1, [sp, #12]
               	mov	r0, r8
               	movs	r1, #0xc
               	bl	0xae <tcp_rpcs_default_execute+0x96> @ imm = #-0x4
               	movs	r0, #0x0
               	add	sp, #0x68
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
