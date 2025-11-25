
/tmp/tmp.WLDScm5BzG/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<musb_hw_ep:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0, #8]
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<musb_h_tx_start>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r1, [r0, #0xc]
               	ldr	r0, [r0, #0x8]
               	orrs	r0, r1
               	beq	0x48 <musb_h_tx_start+0x38> @ imm = #0x28
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldr	r0, [r4]
               	ldr	r1, [r5]
               	bl	0x2a <musb_h_tx_start+0x1a> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movw	r2, #0x0
               	ldr	r1, [r1]
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	orrs	r0, r1
               	orrs	r2, r0
               	b	0x68 <musb_h_tx_start+0x58> @ imm = #0x1e
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	movw	r5, #0x0
               	orr.w	r2, r1, r0
               	movt	r5, #0x0
               	ldr	r0, [r4]
               	ldr	r1, [r5]
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x70 <musb_h_tx_start+0x60> @ imm = #-0x4
