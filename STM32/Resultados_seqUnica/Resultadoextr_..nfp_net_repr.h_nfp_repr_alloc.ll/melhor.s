
/tmp/tmp.apqRIiggxt/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<nfp_app:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<net_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<nfp_repr_alloc>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x1
               	movs	r2, #0x1
               	pop.w	{r7, lr}
               	b.w	0x24 <nfp_repr_alloc+0xc> @ imm = #-0x4
