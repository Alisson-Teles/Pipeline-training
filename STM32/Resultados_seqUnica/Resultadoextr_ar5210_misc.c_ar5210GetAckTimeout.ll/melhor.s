
/tmp/tmp.R4Ktd5yc4h/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ath_hal:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ar5210GetAckTimeout>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r4, r0
               	bl	0x1c <ar5210GetAckTimeout+0x10> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	bl	0x2a <ar5210GetAckTimeout+0x1e> @ imm = #-0x4
               	mov	r1, r0
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x36 <ar5210GetAckTimeout+0x2a> @ imm = #-0x4
