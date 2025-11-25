
/tmp/tmp.kI5RinsvHh/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<nvc0_graph_priv:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<nvc0_graph_ctxctl_debug>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	movw	r1, #0x9604
               	movt	r1, #0x40
               	mov	r4, r0
               	bl	0x1e <nvc0_graph_ctxctl_debug+0x12> @ imm = #-0x4
               	movw	r1, #0x9000
               	uxth	r6, r0
               	movt	r1, #0x40
               	mov	r0, r4
               	bl	0x2e <nvc0_graph_ctxctl_debug+0x22> @ imm = #-0x4
               	cbz	r6, 0x4c <nvc0_graph_ctxctl_debug+0x40> @ imm = #0x16
               	movw	r5, #0x2000
               	movt	r5, #0x50
               	mov	r0, r4
               	mov	r1, r5
               	bl	0x40 <nvc0_graph_ctxctl_debug+0x34> @ imm = #-0x4
               	subs	r6, #0x1
               	add.w	r5, r5, #0x8000
               	bne	0x3c <nvc0_graph_ctxctl_debug+0x30> @ imm = #-0x12
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
