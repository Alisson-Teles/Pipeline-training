
/tmp/tmp.0D6t1QOOIj/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ast_private:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mmc_test_single>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r2, #0xc5
               	pop.w	{r7, lr}
               	b.w	0x16 <mmc_test_single+0xa> @ imm = #-0x4
