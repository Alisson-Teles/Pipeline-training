
/tmp/tmp.lncN2Vtxgq/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_4__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ogg_stream_reset_serialno>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	mov	r5, r0
               	bl	0x14 <ogg_stream_reset_serialno+0x8> @ imm = #-0x4
               	movw	r0, #0x0
               	str	r4, [r5]
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop	{r4, r5, r7, pc}
