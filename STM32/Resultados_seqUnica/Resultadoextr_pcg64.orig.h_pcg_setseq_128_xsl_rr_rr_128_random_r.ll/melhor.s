
/tmp/tmp.iZA0yLiJA1/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<pcg_state_setseq_128:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<pcg_setseq_128_xsl_rr_rr_128_random_r>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <pcg_setseq_128_xsl_rr_rr_128_random_r+0x6> @ imm = #-0x4
               	ldr	r0, [r4]
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x1c <pcg_setseq_128_xsl_rr_rr_128_random_r+0x10> @ imm = #-0x4
