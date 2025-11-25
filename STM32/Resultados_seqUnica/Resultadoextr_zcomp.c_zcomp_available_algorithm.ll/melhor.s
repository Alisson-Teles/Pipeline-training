
/tmp/tmp.8rhe01BmBk/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<zcomp_available_algorithm>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r5, r0
               	mov	r0, r1
               	mov.w	r1, #0xffffffff
               	mov	r2, r5
               	mov	r3, r4
               	bl	0x1c <zcomp_available_algorithm+0x1c> @ imm = #-0x4
               	cmp	r0, #0x0
               	itt	pl
               	movpl	r0, #0x1
               	poppl	{r4, r5, r7, pc}
               	mov	r0, r5
               	movs	r1, #0x0
               	movs	r2, #0x0
               	mov	r3, r4
               	bl	0x30 <zcomp_available_algorithm+0x30> @ imm = #-0x4
               	subs	r0, #0x1
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	pop	{r4, r5, r7, pc}
