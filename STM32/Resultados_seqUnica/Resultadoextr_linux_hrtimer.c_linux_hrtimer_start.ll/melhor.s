
/tmp/tmp.raxSY41IdT/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<hrtimer:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<linux_hrtimer_start>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r2, #0x0
               	pop.w	{r7, lr}
               	b.w	0x16 <linux_hrtimer_start+0xa> @ imm = #-0x4
