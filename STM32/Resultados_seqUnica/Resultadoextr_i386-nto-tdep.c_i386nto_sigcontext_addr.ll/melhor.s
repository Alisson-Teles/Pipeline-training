
/tmp/tmp.CJD1I1mJAG/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<frame_info:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<i386nto_sigcontext_addr>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movs	r2, #0x0
               	ldr	r1, [r1]
               	add	r4, sp, #0x4
               	str	r2, [sp, #0x4]
               	mov	r2, r4
               	movs	r3, #0x4
               	bl	0x26 <i386nto_sigcontext_addr+0x1a> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x4
               	movs	r2, #0x4
               	bl	0x30 <i386nto_sigcontext_addr+0x24> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r2, {r2, r3}
               	adds	r0, r0, r2
               	adcs	r1, r3
               	add	sp, #0x8
               	pop	{r4, r6, r7, pc}
