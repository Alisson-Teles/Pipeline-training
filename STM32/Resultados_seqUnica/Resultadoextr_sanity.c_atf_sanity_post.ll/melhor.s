
/tmp/tmp.s3uLMU8tdo/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<atf_sanity_post>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x10
               	mov	r12, r2
               	mov	r2, r1
               	mov	r1, r0
               	movs	r0, #0x27
               	ldr.w	lr, [r7, #0x8]
               	strd	r0, r3, [sp]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	mov	r3, r12
               	str.w	lr, [sp, #0x8]
               	bl	0x24 <atf_sanity_post+0x24> @ imm = #-0x4
               	add	sp, #0x10
               	pop	{r7, pc}
