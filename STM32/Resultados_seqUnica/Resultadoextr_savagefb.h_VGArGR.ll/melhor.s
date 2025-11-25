
/tmp/tmp.aWQSsTE0Uq/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<savagefb_par:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<VGArGR>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	mov	r1, r0
               	movw	r0, #0x3ce
               	mov	r2, r4
               	bl	0x1a <VGArGR+0xe>       @ imm = #-0x4
               	movw	r0, #0x3cf
               	mov	r1, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x28 <VGArGR+0x1c>      @ imm = #-0x4
