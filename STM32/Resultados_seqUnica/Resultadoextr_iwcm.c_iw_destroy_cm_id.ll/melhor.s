
/tmp/tmp.Mlvvy8PsX9/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<iw_cm_id:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<iw_destroy_cm_id>:
               	push	{r7, lr}
               	mov	r7, sp
               	pop.w	{r7, lr}
               	b.w	0x14 <iw_destroy_cm_id+0x8> @ imm = #-0x4
