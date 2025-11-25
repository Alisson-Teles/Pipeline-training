
/tmp/tmp.SDOIb7D8Rj/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<label:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mac_pipe_label_free>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r4, r0
               	mov	r0, r1
               	mov	r1, r4
               	bl	0x20 <mac_pipe_label_free+0x14> @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x2a <mac_pipe_label_free+0x1e> @ imm = #-0x4
