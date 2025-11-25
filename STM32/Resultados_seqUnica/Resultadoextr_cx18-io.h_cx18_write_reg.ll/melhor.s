
/tmp/tmp.8cDBPd0UtP/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<cx18:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<cx18_write_reg>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	ldr.w	r12, [r7, #0x8]
               	ldrd	r1, lr, [r0]
               	ldr	r4, [r7, #0xc]
               	adds.w	r1, r1, r12
               	adc.w	r4, r4, lr
               	strd	r1, r4, [r7, #8]
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x2a <cx18_write_reg+0x1e> @ imm = #-0x4
