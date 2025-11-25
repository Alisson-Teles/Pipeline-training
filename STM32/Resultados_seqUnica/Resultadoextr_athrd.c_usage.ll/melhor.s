
/tmp/tmp.P0u1OV5xKS/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<usage>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r3, r1
               	mov	r1, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movs	r2, #0x33
               	bl	0x12 <usage+0x12>       @ imm = #-0x4
               	mov.w	r0, #0xffffffff
               	pop.w	{r7, lr}
               	b.w	0x1e <usage+0x1e>       @ imm = #-0x4
