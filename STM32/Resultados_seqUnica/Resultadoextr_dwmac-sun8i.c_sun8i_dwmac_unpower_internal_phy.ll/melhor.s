
/tmp/tmp.tHL8XdM0kN/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<sunxi_priv_data:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<sun8i_dwmac_unpower_internal_phy>:
               	ldr	r1, [r0]
               	cbz	r1, 0x30 <sun8i_dwmac_unpower_internal_phy+0x20> @ imm = #0x1a
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	ldr	r1, [r0, #0x8]
               	mov	r4, r0
               	mov	r0, r1
               	bl	0x1e <sun8i_dwmac_unpower_internal_phy+0xe> @ imm = #-0x4
               	ldr	r0, [r4, #0x4]
               	bl	0x24 <sun8i_dwmac_unpower_internal_phy+0x14> @ imm = #-0x4
               	movs	r0, #0x0
               	str	r0, [r4]
               	pop.w	{r4, r6, r7, lr}
               	movs	r0, #0x0
               	bx	lr
