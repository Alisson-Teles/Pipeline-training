
/tmp/tmp.VSRYskbvUB/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<aead_request:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<atmel_aes_gcm_encrypt>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	pop.w	{r7, lr}
               	b.w	0x1e <atmel_aes_gcm_encrypt+0x12> @ imm = #-0x4
