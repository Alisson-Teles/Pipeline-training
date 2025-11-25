
/tmp/tmp.yRLyGR402r/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<radeon_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<sumo_set_forced_mode_disabled>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	pop.w	{r7, lr}
               	b.w	0x16 <sumo_set_forced_mode_disabled+0xa> @ imm = #-0x4
