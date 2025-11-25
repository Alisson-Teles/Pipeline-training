
/tmp/tmp.bGAzdXV3NV/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<thin_c:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<bio:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<process_bio_success>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r0, r1
               	movs	r1, #0x0
               	pop.w	{r7, lr}
               	b.w	0x24 <process_bio_success+0xc> @ imm = #-0x4
