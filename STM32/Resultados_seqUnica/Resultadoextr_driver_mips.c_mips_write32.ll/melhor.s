
/tmp/tmp.5IO2FFgbGX/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<bcma_drv_mips:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mips_write32>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	pop.w	{r7, lr}
               	b.w	0x16 <mips_write32+0xa> @ imm = #-0x4
