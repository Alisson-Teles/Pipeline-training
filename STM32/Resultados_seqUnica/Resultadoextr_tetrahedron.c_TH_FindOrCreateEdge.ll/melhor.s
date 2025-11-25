
/tmp/tmp.PbBZ30Ww0z/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TH_FindOrCreateEdge>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	mov	r5, r0
               	bl	0x8 <TH_FindOrCreateEdge+0x8> @ imm = #-0x4
               	cmp	r0, #0x0
               	it	ne
               	popne	{r4, r5, r7, pc}
               	mov	r0, r5
               	mov	r1, r4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x1a <TH_FindOrCreateEdge+0x1a> @ imm = #-0x4
