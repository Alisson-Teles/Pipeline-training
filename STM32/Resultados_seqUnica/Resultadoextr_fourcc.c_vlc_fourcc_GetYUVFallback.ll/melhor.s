
/tmp/tmp.XuFhi5Xvdr/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<vlc_fourcc_GetYUVFallback>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	pop.w	{r7, lr}
               	b.w	0x1c <vlc_fourcc_GetYUVFallback+0x1c> @ imm = #-0x4
