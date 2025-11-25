
/tmp/tmp.opmmm3hVDL/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<msc_window:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<msc_block_desc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<msc_win_base>:
               	push	{r7, lr}
               	mov	r7, sp
               	bl	0x1c <msc_win_base+0x4> @ imm = #-0x4
               	pop.w	{r7, lr}
               	b.w	0x24 <msc_win_base+0xc> @ imm = #-0x4
