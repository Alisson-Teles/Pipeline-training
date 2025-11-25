
/tmp/tmp.BX913zYCpR/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<rtl8169_private:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<rtl_w1w0_phy_ocp>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	mov	r8, r3
               	mov	r5, r2
               	mov	r6, r1
               	mov	r4, r0
               	bl	0x1c <rtl_w1w0_phy_ocp+0x10> @ imm = #-0x4
               	orrs	r0, r5
               	bic.w	r2, r0, r8
               	mov	r0, r4
               	mov	r1, r6
               	ldr	r8, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x32 <rtl_w1w0_phy_ocp+0x26> @ imm = #-0x4
