
/tmp/tmp.fFRrdsQZo5/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<kmem_cache:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ccid_kmem_cache_destroy>:
               	push	{r7, lr}
               	mov	r7, sp
               	pop.w	{r7, lr}
               	b.w	0x14 <ccid_kmem_cache_destroy+0x8> @ imm = #-0x4
