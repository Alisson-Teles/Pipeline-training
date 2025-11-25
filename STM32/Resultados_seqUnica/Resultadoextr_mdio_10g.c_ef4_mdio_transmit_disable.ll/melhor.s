
/tmp/tmp.fOjLdeu81s/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ef4_nic:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ef4_mdio_transmit_disable>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x8
               	movw	r3, #0x0
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movw	lr, #0x0
               	movt	r3, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	movt	lr, #0x0
               	ldr.w	r12, [r0]
               	ldr	r4, [r3]
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	ldr.w	r3, [lr]
               	and.w	r4, r4, r12
               	str	r4, [sp]
               	bl	0x46 <ef4_mdio_transmit_disable+0x3a> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r4, r6, r7, pc}
