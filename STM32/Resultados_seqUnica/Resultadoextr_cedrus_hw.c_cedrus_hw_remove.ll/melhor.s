
/tmp/tmp.eRT7ngRqvj/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<cedrus_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	str	r1, [r0, #0x10]
               	pop	{r7, pc}
               	nop

<cedrus_hw_remove>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r0, [r0, #0x10]
               	bl	0x1c <cedrus_hw_remove+0x8> @ imm = #-0x4
               	ldr	r0, [r4, #0xc]
               	bl	0x22 <cedrus_hw_remove+0xe> @ imm = #-0x4
               	ldr	r0, [r4, #0x8]
               	bl	0x28 <cedrus_hw_remove+0x14> @ imm = #-0x4
               	ldr	r0, [r4, #0x4]
               	bl	0x2e <cedrus_hw_remove+0x1a> @ imm = #-0x4
               	ldr	r0, [r4]
               	bl	0x34 <cedrus_hw_remove+0x20> @ imm = #-0x4
               	ldr	r0, [r4]
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x3e <cedrus_hw_remove+0x2a> @ imm = #-0x4
