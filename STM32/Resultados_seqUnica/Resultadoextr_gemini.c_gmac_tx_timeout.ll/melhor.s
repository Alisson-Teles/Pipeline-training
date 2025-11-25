
/tmp/tmp.G0Cb0wOyRK/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<net_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<gmac_tx_timeout>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movs	r2, #0xb
               	mov	r4, r0
               	bl	0x1c <gmac_tx_timeout+0x10> @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x26 <gmac_tx_timeout+0x1a> @ imm = #-0x4
