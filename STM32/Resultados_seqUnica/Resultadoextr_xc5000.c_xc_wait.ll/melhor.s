
/tmp/tmp.ZwFn8wPVTH/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<xc_wait>:
               	push	{r7, lr}
               	mov	r7, sp
               	pop.w	{r7, lr}
               	b.w	0x8 <xc_wait+0x8>       @ imm = #-0x4
