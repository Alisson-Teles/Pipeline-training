
/tmp/tmp.O9ylmiprrP/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<nct_softc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<nct_io_read>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r2
               	mov	r5, r0
               	bl	0x14 <nct_io_read+0x8>  @ imm = #-0x4
               	ldr	r0, [r5]
               	mov	r1, r4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x20 <nct_io_read+0x14> @ imm = #-0x4
