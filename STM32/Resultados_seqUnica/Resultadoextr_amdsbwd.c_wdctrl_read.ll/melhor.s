
/tmp/tmp.hB1KdqIq1L/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<amdsbwd_softc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<wdctrl_read>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	movs	r1, #0x0
               	pop.w	{r7, lr}
               	b.w	0x18 <wdctrl_read+0xc>  @ imm = #-0x4
