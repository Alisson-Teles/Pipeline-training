
/tmp/tmp.8kVDrnfVYz/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<crypto_skcipher:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<skcipher_set_needkey>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldrd	r1, r2, [r0]
               	orrs	r1, r2
               	it	eq
               	popeq	{r7, pc}
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	pop.w	{r7, lr}
               	b.w	0x28 <skcipher_set_needkey+0x1c> @ imm = #-0x4
