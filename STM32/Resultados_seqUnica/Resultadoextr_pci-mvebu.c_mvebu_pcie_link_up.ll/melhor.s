
/tmp/tmp.mDhI9lo54g/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mvebu_pcie_port:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mvebu_pcie_link_up>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	bl	0x1a <mvebu_pcie_link_up+0xe> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	ands	r0, r1
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	pop	{r7, pc}
