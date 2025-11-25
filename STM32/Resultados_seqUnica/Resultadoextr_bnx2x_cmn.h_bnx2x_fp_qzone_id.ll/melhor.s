
/tmp/tmp.VYAbP6Jg1O/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<bnx2x_fastpath:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<bnx2x_fp_qzone_id>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r6, r0
               	ldr	r0, [r0, #0x8]
               	bl	0x1c <bnx2x_fp_qzone_id+0xc> @ imm = #-0x4
               	ldrd	r5, r4, [r6]
               	orrs	r0, r1
               	beq	0x40 <bnx2x_fp_qzone_id+0x30> @ imm = #0x16
               	ldr	r0, [r6, #0x8]
               	bl	0x2a <bnx2x_fp_qzone_id+0x1a> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	muls	r0, r1, r0
               	adds	r5, r5, r0
               	adc.w	r4, r4, r0, asr #31
               	mov	r0, r5
               	mov	r1, r4
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
