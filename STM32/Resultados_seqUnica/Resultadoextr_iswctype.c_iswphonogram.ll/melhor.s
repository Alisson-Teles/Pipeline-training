
/tmp/tmp.dCHAvc3zhK/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<iswphonogram>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	pop.w	{r7, lr}
               	b.w	0x12 <iswphonogram+0x12> @ imm = #-0x4
