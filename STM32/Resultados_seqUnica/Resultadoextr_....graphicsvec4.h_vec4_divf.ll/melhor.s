
/tmp/tmp.Ayk8ys9a8s/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<vec4:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<vec4_divf>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	ldr	r4, [r1]
               	mov	r5, r0
               	mov	r0, r2
               	bl	0x16 <vec4_divf+0xa>    @ imm = #-0x4
               	mov	r1, r0
               	mov	r0, r4
               	bl	0x1e <vec4_divf+0x12>   @ imm = #-0x4
               	str	r0, [r5]
               	pop	{r4, r5, r7, pc}
