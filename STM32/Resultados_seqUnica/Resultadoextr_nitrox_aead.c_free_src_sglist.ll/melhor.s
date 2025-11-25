
/tmp/tmp.fk8EkzHqxC/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<nitrox_kcrypt_request:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<free_src_sglist>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	pop.w	{r7, lr}
               	b.w	0x16 <free_src_sglist+0xa> @ imm = #-0x4
