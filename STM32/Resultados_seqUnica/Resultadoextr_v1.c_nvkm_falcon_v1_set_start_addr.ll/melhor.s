
/tmp/tmp.vdsWooKYHI/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<nvkm_falcon:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<nvkm_falcon_v1_set_start_addr>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r2, r1
               	mov.w	r1, #0x104
               	pop.w	{r7, lr}
               	b.w	0x1a <nvkm_falcon_v1_set_start_addr+0xe> @ imm = #-0x4
