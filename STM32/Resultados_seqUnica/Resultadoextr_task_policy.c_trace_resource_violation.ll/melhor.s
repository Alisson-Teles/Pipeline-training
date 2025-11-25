
/tmp/tmp.aHNiQ2y3qz/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ledger_entry_info:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<trace_resource_violation>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x8
               	mov	r4, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r2, [r1]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r3, r0
               	mov	r0, r2
               	mov	r2, r3
               	bl	0x32 <trace_resource_violation+0x22> @ imm = #-0x4
               	ldrd	r12, r3, [r4]
               	ldrd	r2, r1, [r4, #8]
               	str.w	r12, [sp]
               	bl	0x42 <trace_resource_violation+0x32> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r4, r6, r7, pc}
