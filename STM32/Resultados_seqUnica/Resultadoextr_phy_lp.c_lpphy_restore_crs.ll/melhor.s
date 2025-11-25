
/tmp/tmp.0Beh5Gw2Uy/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<b43_wldev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<lpphy_restore_crs>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <lpphy_restore_crs+0x6> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movw	r2, #0xff80
               	bl	0x26 <lpphy_restore_crs+0x1a> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	mov.w	r2, #0xfc00
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x3e <lpphy_restore_crs+0x32> @ imm = #-0x4
