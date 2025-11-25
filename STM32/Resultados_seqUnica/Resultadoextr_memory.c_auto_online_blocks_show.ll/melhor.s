
/tmp/tmp.aXRQ5jMgpE/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<device_attribute:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<auto_online_blocks_show>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldm	r0, {r0, r1}
               	orrs	r0, r1
               	mov	r0, r2
               	beq	0x40 <auto_online_blocks_show+0x28> @ imm = #0x12
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r2, r3
               	movs	r3, #0x7
               	pop.w	{r7, lr}
               	b.w	0x3c <auto_online_blocks_show+0x24> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r2, r3
               	movs	r3, #0x8
               	pop.w	{r7, lr}
               	b.w	0x50 <auto_online_blocks_show+0x38> @ imm = #-0x4
