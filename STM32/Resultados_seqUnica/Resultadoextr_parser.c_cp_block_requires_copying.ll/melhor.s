
/tmp/tmp.Cv1BshQlWy/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<cp_block_requires_copying>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x6 <cp_block_requires_copying+0x6> @ imm = #-0x4
               	orrs	r0, r1
               	bne	0x1c <cp_block_requires_copying+0x1c> @ imm = #0xc
               	mov	r0, r4
               	bl	0x10 <cp_block_requires_copying+0x10> @ imm = #-0x4
               	bl	0x14 <cp_block_requires_copying+0x14> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x20 <cp_block_requires_copying+0x20> @ imm = #0x2
               	movs	r0, #0x1
               	pop	{r4, r6, r7, pc}
               	mov	r0, r4
               	bl	0x22 <cp_block_requires_copying+0x22> @ imm = #-0x4
               	bl	0x26 <cp_block_requires_copying+0x26> @ imm = #-0x4
               	orrs	r0, r1
               	it	ne
               	movne	r0, #0x1
               	pop	{r4, r6, r7, pc}
