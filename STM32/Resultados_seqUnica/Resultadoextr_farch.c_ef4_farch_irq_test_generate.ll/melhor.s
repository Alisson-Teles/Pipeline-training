
/tmp/tmp.bo26IPV7eA/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ef4_nic:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ef4_farch_irq_test_generate>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x1
               	movs	r2, #0x1
               	bl	0x14 <ef4_farch_irq_test_generate+0x8> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r7, pc}
