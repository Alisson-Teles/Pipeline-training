
/tmp/tmp.3441dwRI2A/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<kv_fini>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	pop.w	{r7, lr}
               	b.w	0x16 <kv_fini+0xa>      @ imm = #-0x4
