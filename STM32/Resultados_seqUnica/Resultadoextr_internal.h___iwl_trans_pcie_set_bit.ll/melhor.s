
/tmp/tmp.JzHjL6pBqE/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<iwl_trans:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<__iwl_trans_pcie_set_bit>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r3, r2
               	pop.w	{r7, lr}
               	b.w	0x16 <__iwl_trans_pcie_set_bit+0xa> @ imm = #-0x4
