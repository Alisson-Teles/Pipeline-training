
/tmp/tmp.cHxhKTDurv/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<taosCloseLogByFd>:
               	cmp	r0, #0x0
               	it	mi
               	bxmi	lr
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0xc <taosCloseLogByFd+0xc> @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x16 <taosCloseLogByFd+0x16> @ imm = #-0x4
