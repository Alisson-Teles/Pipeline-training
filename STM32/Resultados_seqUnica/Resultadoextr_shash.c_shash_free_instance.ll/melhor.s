
/tmp/tmp.NlzaFNh6UO/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<crypto_instance:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<shash_free_instance>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <shash_free_instance+0x6> @ imm = #-0x4
               	bl	0x16 <shash_free_instance+0xa> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x1c <shash_free_instance+0x10> @ imm = #-0x4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x24 <shash_free_instance+0x18> @ imm = #-0x4
