
/tmp/tmp.ObUKFgYI5f/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ibmveth_adapter:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ibmveth_rxq_buffer_valid>:
               	push	{r7, lr}
               	mov	r7, sp
               	bl	0x10 <ibmveth_rxq_buffer_valid+0x4> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	ands	r0, r1
               	pop	{r7, pc}
