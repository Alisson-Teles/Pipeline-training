
/tmp/tmp.61S9fVOdUH/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<slgt_info:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	strd	r1, r1, [r0, #16]
               	pop	{r7, pc}

<free_dma_bufs>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r1, [r0, #0x14]
               	ldr	r0, [r0, #0x10]
               	orrs	r0, r1
               	beq	0x3c <free_dma_bufs+0x28> @ imm = #0x18
               	ldrd	r2, r1, [r4, #8]
               	mov	r0, r4
               	bl	0x28 <free_dma_bufs+0x14> @ imm = #-0x4
               	ldrd	r2, r1, [r4]
               	mov	r0, r4
               	bl	0x32 <free_dma_bufs+0x1e> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x38 <free_dma_bufs+0x24> @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x42 <free_dma_bufs+0x2e> @ imm = #-0x4
