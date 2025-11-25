
/tmp/tmp.jbWhqyLAyE/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<vc_data:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<sticon_blank>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x8
               	mov	r4, r2
               	cbz	r1, 0x46 <sticon_blank+0x3a> @ imm = #0x2e
               	mov	r5, r0
               	bl	0x18 <sticon_blank+0xc> @ imm = #-0x4
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldrd	r12, r3, [r5]
               	ldr	r5, [r1]
               	movs	r1, #0x0
               	movs	r2, #0x0
               	strd	r12, r5, [sp]
               	bl	0x3c <sticon_blank+0x30> @ imm = #-0x4
               	cbz	r4, 0x54 <sticon_blank+0x48> @ imm = #0x10
               	movs	r0, #0x1
               	b	0x4a <sticon_blank+0x3e> @ imm = #0x2
               	cbz	r4, 0x54 <sticon_blank+0x48> @ imm = #0xa
               	movs	r0, #0x0
               	movw	r1, #0x0
               	movt	r1, #0x0
               	str	r0, [r1]
               	movs	r0, #0x1
               	add	sp, #0x8
               	pop	{r4, r5, r7, pc}
