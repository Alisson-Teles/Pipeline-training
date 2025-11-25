
/tmp/tmp.DXtjW9FGUa/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<framebuffer_size_callback>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movs	r3, #0x1d
               	mov	r4, r2
               	mov	r5, r1
               	bl	0x12 <framebuffer_size_callback+0x12> @ imm = #-0x4
               	movs	r0, #0x0
               	movs	r1, #0x0
               	mov	r2, r5
               	mov	r3, r4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x22 <framebuffer_size_callback+0x22> @ imm = #-0x4
