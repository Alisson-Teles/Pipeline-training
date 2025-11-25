
/tmp/tmp.JcE9defgbV/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<bnx2x:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<bnx2x_enable_nvram_access>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldr	r1, [r5]
               	mov	r4, r0
               	bl	0x1c <bnx2x_enable_nvram_access+0x10> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	orrs	r0, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r2, [r1]
               	ldr	r1, [r5]
               	orrs	r2, r0
               	mov	r0, r4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x40 <bnx2x_enable_nvram_access+0x34> @ imm = #-0x4
