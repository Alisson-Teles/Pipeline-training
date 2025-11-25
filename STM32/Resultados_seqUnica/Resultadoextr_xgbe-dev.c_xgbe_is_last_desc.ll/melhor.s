
/tmp/tmp.qVN7yT481I/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<xgbe_ring_desc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<xgbe_is_last_desc>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	pop.w	{r7, lr}
               	b.w	0x2a <xgbe_is_last_desc+0x1e> @ imm = #-0x4
