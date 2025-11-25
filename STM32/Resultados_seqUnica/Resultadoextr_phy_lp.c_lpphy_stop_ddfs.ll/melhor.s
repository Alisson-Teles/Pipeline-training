
/tmp/tmp.hiHcoG88fY/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<b43_wldev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<lpphy_stop_ddfs>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	movw	r2, #0xfffd
               	mov	r4, r0
               	bl	0x20 <lpphy_stop_ddfs+0x14> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movw	r2, #0xffdf
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x38 <lpphy_stop_ddfs+0x2c> @ imm = #-0x4
