
/tmp/tmp.7wZLV23vyF/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mtd_info:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<onenand_block_isbad>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r5, r0
               	bl	0x1e <onenand_block_isbad+0x12> @ imm = #-0x4
               	mov	r0, r5
               	mov	r1, r4
               	movs	r2, #0x0
               	bl	0x28 <onenand_block_isbad+0x1c> @ imm = #-0x4
               	mov	r4, r0
               	mov	r0, r5
               	bl	0x30 <onenand_block_isbad+0x24> @ imm = #-0x4
               	mov	r0, r4
               	pop	{r4, r5, r7, pc}
