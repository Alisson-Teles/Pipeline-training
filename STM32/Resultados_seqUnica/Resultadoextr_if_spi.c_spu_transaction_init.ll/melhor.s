
/tmp/tmp.DOymgfq69L/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<if_spi_card:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<spu_transaction_init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	ldrd	r2, r3, [r0]
               	movt	r1, #0x0
               	ldr	r0, [r1]
               	adds	r2, #0x1
               	adc	r3, r3, #0x0
               	bl	0x24 <spu_transaction_init+0x18> @ imm = #-0x4
               	cmp	r0, #0x0
               	it	ne
               	popne	{r7, pc}
               	mov.w	r0, #0x190
               	pop.w	{r7, lr}
               	b.w	0x36 <spu_transaction_init+0x2a> @ imm = #-0x4
