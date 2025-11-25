
/tmp/tmp.SUjakl29ti/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<altera_tse_private:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<sgdma_tx_completions>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <sgdma_tx_completions+0x6> @ imm = #-0x4
               	cbnz	r0, 0x3e <sgdma_tx_completions+0x32> @ imm = #0x24
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	ldr	r5, [r4]
               	bl	0x24 <sgdma_tx_completions+0x18> @ imm = #-0x4
               	mov	r1, r0
               	mov	r0, r5
               	bl	0x2c <sgdma_tx_completions+0x20> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	tst	r1, r0
               	beq	0x42 <sgdma_tx_completions+0x36> @ imm = #0x2
               	movs	r0, #0x0
               	pop	{r4, r5, r7, pc}
               	mov	r0, r4
               	bl	0x44 <sgdma_tx_completions+0x38> @ imm = #-0x4
               	orrs	r0, r1
               	it	ne
               	movne	r0, #0x1
               	pop	{r4, r5, r7, pc}
