
/tmp/tmp.27w11pSJoI/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_5__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<opj_t1_dec_refpass_mqc>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r2, [r0]
               	cmp	r2, #0x40
               	bne	0x24 <opj_t1_dec_refpass_mqc+0x18> @ imm = #0xc
               	ldr	r2, [r0, #0x4]
               	cmp	r2, #0x40
               	bne	0x24 <opj_t1_dec_refpass_mqc+0x18> @ imm = #0x6
               	pop.w	{r7, lr}
               	b.w	0x20 <opj_t1_dec_refpass_mqc+0x14> @ imm = #-0x4
               	pop.w	{r7, lr}
               	b.w	0x28 <opj_t1_dec_refpass_mqc+0x1c> @ imm = #-0x4
