
/tmp/tmp.Li8ib3WBgm/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<v4l2_subdev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<adv7604_setup_irqs>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x41
               	movs	r2, #0xd7
               	pop.w	{r7, lr}
               	b.w	0x18 <adv7604_setup_irqs+0xc> @ imm = #-0x4
