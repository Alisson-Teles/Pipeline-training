
/tmp/tmp.c1cilL9ZlZ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<bcma_drv_cc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<bcma_chipco_regctl_maskset>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	movw	r4, #0x0
               	movt	r4, #0x0
               	mov	r5, r2
               	mov	r2, r1
               	ldr	r1, [r4]
               	mov	r8, r3
               	mov	r6, r0
               	bl	0x26 <bcma_chipco_regctl_maskset+0x1a> @ imm = #-0x4
               	ldr	r1, [r4]
               	mov	r0, r6
               	bl	0x2e <bcma_chipco_regctl_maskset+0x22> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r6
               	mov	r2, r5
               	mov	r3, r8
               	ldr	r8, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x4a <bcma_chipco_regctl_maskset+0x3e> @ imm = #-0x4
