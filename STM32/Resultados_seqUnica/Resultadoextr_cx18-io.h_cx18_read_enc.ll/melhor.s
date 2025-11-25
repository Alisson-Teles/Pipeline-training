
/tmp/tmp.d7B7TULtm3/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<cx18:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<cx18_read_enc>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldrd	r1, r12, [r0]
               	adds	r2, r2, r1
               	adc.w	r3, r3, r12
               	pop.w	{r7, lr}
               	b.w	0x1e <cx18_read_enc+0x12> @ imm = #-0x4
