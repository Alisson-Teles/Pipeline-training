
/tmp/tmp.N0Ba8idoXe/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ingenic_ecc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<jz4725b_bch_config_clear>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldrd	r2, r12, [r0]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldrd	r3, lr, [r0]
               	mov	r0, r1
               	adds	r2, r2, r3
               	adc.w	r3, lr, r12
               	pop.w	{r7, lr}
               	b.w	0x2c <jz4725b_bch_config_clear+0x20> @ imm = #-0x4
