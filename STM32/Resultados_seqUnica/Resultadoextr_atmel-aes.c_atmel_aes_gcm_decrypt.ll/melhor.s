
/tmp/tmp.DvB8RdvUSs/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<aead_request:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<atmel_aes_gcm_decrypt>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	pop.w	{r7, lr}
               	b.w	0x16 <atmel_aes_gcm_decrypt+0xa> @ imm = #-0x4
