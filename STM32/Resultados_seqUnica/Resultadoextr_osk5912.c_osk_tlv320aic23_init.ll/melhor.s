
/tmp/tmp.UnfE5QmEzZ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<snd_soc_codec:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<osk_tlv320aic23_init>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r5, [r1]
               	mov	r4, r0
               	mov	r0, r5
               	bl	0x1e <osk_tlv320aic23_init+0x12> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	mov	r1, r5
               	bl	0x28 <osk_tlv320aic23_init+0x1c> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r5, [r0]
               	mov	r0, r5
               	bl	0x38 <osk_tlv320aic23_init+0x2c> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	mov	r1, r5
               	bl	0x42 <osk_tlv320aic23_init+0x36> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r4
               	movs	r2, #0xe
               	bl	0x52 <osk_tlv320aic23_init+0x46> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r4
               	movs	r2, #0x7
               	bl	0x62 <osk_tlv320aic23_init+0x56> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r4
               	movs	r2, #0x8
               	bl	0x72 <osk_tlv320aic23_init+0x66> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x78 <osk_tlv320aic23_init+0x6c> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r4, r5, r7, pc}
