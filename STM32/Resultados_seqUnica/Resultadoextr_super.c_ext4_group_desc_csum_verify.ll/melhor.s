
/tmp/tmp.xT149JSFCS/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<super_block:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ext4_group_desc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<ext4_group_desc_csum_verify>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r11}
               	mov	r4, r2
               	mov	r5, r1
               	mov	r6, r0
               	bl	0x26 <ext4_group_desc_csum_verify+0xe> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x48 <ext4_group_desc_csum_verify+0x30> @ imm = #0x18
               	ldrd	r8, r9, [r4]
               	mov	r0, r6
               	mov	r1, r5
               	mov	r2, r4
               	bl	0x38 <ext4_group_desc_csum_verify+0x20> @ imm = #-0x4
               	eor.w	r1, r1, r9
               	eor.w	r0, r0, r8
               	orrs	r0, r1
               	bne	0x50 <ext4_group_desc_csum_verify+0x38> @ imm = #0x6
               	movs	r0, #0x1
               	pop.w	{r8, r9, r11}
               	pop	{r4, r5, r6, r7, pc}
               	movs	r0, #0x0
               	pop.w	{r8, r9, r11}
               	pop	{r4, r5, r6, r7, pc}
