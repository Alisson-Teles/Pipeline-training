
/tmp/tmp.z5tQkvwnEF/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<GX_SetClipMode>:
               	push	{r7, lr}
               	mov	r7, sp
               	and	r1, r0, #0x1
               	movw	r0, #0x1005
               	pop.w	{r7, lr}
               	b.w	0x10 <GX_SetClipMode+0x10> @ imm = #-0x4
