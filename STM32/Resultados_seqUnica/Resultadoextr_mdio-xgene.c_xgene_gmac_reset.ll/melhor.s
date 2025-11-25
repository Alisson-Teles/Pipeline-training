
/tmp/tmp.OHHonaDqAA/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<xgene_mdio_pdata:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<xgene_gmac_reset>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r5, #0x0
               	movw	r2, #0x0
               	movt	r5, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r5]
               	ldr	r2, [r2]
               	mov	r4, r0
               	bl	0x26 <xgene_gmac_reset+0x1a> @ imm = #-0x4
               	ldr	r1, [r5]
               	mov	r0, r4
               	movs	r2, #0x0
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x34 <xgene_gmac_reset+0x28> @ imm = #-0x4
