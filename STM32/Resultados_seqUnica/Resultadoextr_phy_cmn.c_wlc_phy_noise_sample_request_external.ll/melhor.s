
/tmp/tmp.QpQd6lZRrY/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<brcms_phy_pub:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<wlc_phy_noise_sample_request_external>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <wlc_phy_noise_sample_request_external+0x6> @ imm = #-0x4
               	bl	0x16 <wlc_phy_noise_sample_request_external+0xa> @ imm = #-0x4
               	mov	r2, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x2c <wlc_phy_noise_sample_request_external+0x20> @ imm = #-0x4
