
/tmp/tmp.Zps1ZH9ZsD/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<history_str_free>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r2, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	pop.w	{r7, lr}
               	b.w	0x14 <history_str_free+0x14> @ imm = #-0x4
