
/tmp/tmp.yOEQ1hFObL/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<video_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<devnode_clear>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	ldm	r0, {r0, r4}
               	bl	0x12 <devnode_clear+0x6> @ imm = #-0x4
               	mov	r1, r0
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x1e <devnode_clear+0x12> @ imm = #-0x4
