
/tmp/tmp.ftURgGKU2H/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<hnae_ring:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<hnae_free_buffers>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r0, [r0]
               	cmp	r0, #0x1
               	it	lt
               	poplt	{r4, r5, r7, pc}
               	movs	r5, #0x0
               	mov	r0, r4
               	mov	r1, r5
               	bl	0x20 <hnae_free_buffers+0x14> @ imm = #-0x4
               	ldr	r0, [r4]
               	adds	r5, #0x1
               	cmp	r5, r0
               	blt	0x1c <hnae_free_buffers+0x10> @ imm = #-0x12
               	pop	{r4, r5, r7, pc}
