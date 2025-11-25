
/tmp/tmp.1IZzb55hhB/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<clusterBroadcastDelJob>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x8
               	mov	r4, r0
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r2, [r1]
               	ldr	r3, [r4]
               	movw	r1, #0x0
               	mov.w	r12, #0x12
               	movt	r1, #0x0
               	str.w	r12, [sp]
               	bl	0x3a <clusterBroadcastDelJob+0x2e> @ imm = #-0x4
               	movw	r2, #0x0
               	movw	r3, #0x0
               	movt	r2, #0x0
               	movt	r3, #0x0
               	ldrd	r1, r0, [r4]
               	ldr	r2, [r2]
               	ldr	r4, [r3]
               	movs	r3, #0x0
               	str	r4, [sp]
               	bl	0x5a <clusterBroadcastDelJob+0x4e> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r4, r6, r7, pc}
