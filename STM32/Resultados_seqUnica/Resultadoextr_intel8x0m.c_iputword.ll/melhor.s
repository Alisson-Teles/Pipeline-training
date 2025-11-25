
/tmp/tmp.MDTU95Jc1K/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<intel8x0m:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<iputword>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldrd	r1, r12, [r0]
               	ldr	r0, [r7, #0x8]
               	adds	r2, r2, r1
               	adc.w	r3, r3, r12
               	pop.w	{r7, lr}
               	b.w	0x20 <iputword+0x14>    @ imm = #-0x4
