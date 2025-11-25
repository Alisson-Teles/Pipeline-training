
/tmp/tmp.NGxZnhidrR/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mmc_test_card:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mmc_test_cmds_during_write>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	movs	r2, #0x1
               	movs	r3, #0x0
               	pop.w	{r7, lr}
               	b.w	0x1a <mmc_test_cmds_during_write+0xe> @ imm = #-0x4
