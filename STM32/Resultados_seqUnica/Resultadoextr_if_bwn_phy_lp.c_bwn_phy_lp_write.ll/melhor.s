
/tmp/tmp.ErSzasG6vF/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<bwn_mac:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<bwn_phy_lp_write>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r2
               	mov	r2, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r5, r0
               	bl	0x20 <bwn_phy_lp_write+0x14> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r5
               	mov	r2, r4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x36 <bwn_phy_lp_write+0x2a> @ imm = #-0x4
