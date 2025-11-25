
/tmp/tmp.dO654ao9u3/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mrsas_softc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mrsas_get_map_info>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	movs	r0, #0x0
               	str	r0, [r4]
               	mov	r0, r4
               	bl	0x18 <mrsas_get_map_info+0xc> @ imm = #-0x4
               	cmp	r0, #0x0
               	itt	ne
               	movne	r0, #0x1
               	popne	{r4, r6, r7, pc}
               	mov	r0, r4
               	bl	0x26 <mrsas_get_map_info+0x1a> @ imm = #-0x4
               	orrs	r0, r1
               	mov.w	r0, #0x1
               	itt	eq
               	streq	r0, [r4]
               	moveq	r0, #0x0
               	pop	{r4, r6, r7, pc}
