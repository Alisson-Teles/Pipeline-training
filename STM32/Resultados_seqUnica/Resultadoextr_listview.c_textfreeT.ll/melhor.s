
/tmp/tmp.Xh3MoLraeX/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<textfreeT>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	cmp	r1, #0x0
               	it	ne
               	popne	{r4, r6, r7, pc}
               	mov	r4, r0
               	bl	0xc <textfreeT+0xc>     @ imm = #-0x4
               	orrs	r1, r0
               	beq	0x1e <textfreeT+0x1e>   @ imm = #0x8
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x1a <textfreeT+0x1a>   @ imm = #-0x4
               	pop	{r4, r6, r7, pc}
