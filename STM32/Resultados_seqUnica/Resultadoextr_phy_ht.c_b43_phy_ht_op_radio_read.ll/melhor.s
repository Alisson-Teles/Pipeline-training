
/tmp/tmp.STGNwnXrgd/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<b43_wldev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<b43_phy_ht_op_radio_read>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r3, [r0]
               	orr	r2, r1, #0x200
               	mov	r0, r4
               	mov	r1, r3
               	bl	0x24 <b43_phy_ht_op_radio_read+0x18> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x38 <b43_phy_ht_op_radio_read+0x2c> @ imm = #-0x4
