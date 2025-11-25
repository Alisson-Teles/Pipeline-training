
/tmp/tmp.AJbNHSMR0Z/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<nouveau_bo:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<corec37d_ntfy_init>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	asrs	r0, r1, #0x1f
               	add.w	r5, r1, r0, lsr #30
               	asrs	r1, r5, #0x2
               	mov	r0, r4
               	movs	r2, #0x0
               	bl	0x1e <corec37d_ntfy_init+0x12> @ imm = #-0x4
               	movs	r0, #0x1
               	add.w	r1, r0, r5, asr #2
               	mov	r0, r4
               	movs	r2, #0x0
               	bl	0x2c <corec37d_ntfy_init+0x20> @ imm = #-0x4
               	movs	r0, #0x2
               	add.w	r1, r0, r5, asr #2
               	mov	r0, r4
               	movs	r2, #0x0
               	bl	0x3a <corec37d_ntfy_init+0x2e> @ imm = #-0x4
               	movs	r0, #0x3
               	add.w	r1, r0, r5, asr #2
               	mov	r0, r4
               	movs	r2, #0x0
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x4c <corec37d_ntfy_init+0x40> @ imm = #-0x4
