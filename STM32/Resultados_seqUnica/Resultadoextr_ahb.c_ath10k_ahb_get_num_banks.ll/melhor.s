
/tmp/tmp.p1vfkOkFM2/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ath10k:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<ath10k_ahb_get_num_banks>:
               	movw	r3, #0x0
               	movt	r3, #0x0
               	ldrd	r12, r2, [r0]
               	ldr	r1, [r3, #0x4]
               	ldr	r3, [r3]
               	eors	r1, r2
               	eor.w	r2, r12, r3
               	orrs	r1, r2
               	beq	0x3c <ath10k_ahb_get_num_banks+0x30> @ imm = #0x14
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movs	r2, #0x24
               	bl	0x34 <ath10k_ahb_get_num_banks+0x28> @ imm = #-0x4
               	pop.w	{r7, lr}
               	movs	r0, #0x1
               	bx	lr
