
/tmp/tmp.o5NoLrut6S/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mei_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mei_hcsr_set>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	bics	r1, r2
               	pop.w	{r7, lr}
               	b.w	0x20 <mei_hcsr_set+0x14> @ imm = #-0x4
