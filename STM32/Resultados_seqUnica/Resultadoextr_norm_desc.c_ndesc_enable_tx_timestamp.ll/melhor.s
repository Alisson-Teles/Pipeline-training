
/tmp/tmp.aWYtuNYpds/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<dma_desc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ndesc_enable_tx_timestamp>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r5, [r0]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	bl	0x1e <ndesc_enable_tx_timestamp+0x12> @ imm = #-0x4
               	orrs	r0, r5
               	str	r0, [r4]
               	pop	{r4, r5, r7, pc}
