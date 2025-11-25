
/tmp/tmp.7chekfEo70/saida.o:	file format elf32-littlearm

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

<hotkey_recommended_mask_show>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	mov	r0, r2
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	mov	r12, r3
               	orrs	r2, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movw	lr, #0x0
               	ldr	r3, [r1]
               	movt	lr, #0x0
               	ldr.w	r1, [lr]
               	bic.w	r3, r2, r3
               	movw	r2, #0x0
               	mov.w	lr, #0x7
               	movt	r2, #0x0
               	strd	r12, lr, [sp]
               	bl	0x62 <hotkey_recommended_mask_show+0x4a> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
