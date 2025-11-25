
/tmp/tmp.Ocj6z4nQpe/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<qlcnic_adapter:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<qlcnic_pcie_sem_unlock>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	mov	r0, r1
               	bl	0x14 <qlcnic_pcie_sem_unlock+0x8> @ imm = #-0x4
               	bl	0x18 <qlcnic_pcie_sem_unlock+0xc> @ imm = #-0x4
               	mov	r1, r0
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x24 <qlcnic_pcie_sem_unlock+0x18> @ imm = #-0x4
