
/tmp/tmp.bt245lxSMi/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ahash_request:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ahash_hmac_finup>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r1, [r0]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movs	r2, #0x1e
               	bl	0x1e <ahash_hmac_finup+0x12> @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x28 <ahash_hmac_finup+0x1c> @ imm = #-0x4
