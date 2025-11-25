
/tmp/tmp.OcMFyh2g6D/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<btf_verifier_env:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<btf_verifier_env_free>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r0, [r0]
               	bl	0x14 <btf_verifier_env_free+0x8> @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x1e <btf_verifier_env_free+0x12> @ imm = #-0x4
