
/tmp/tmp.SQyJJ3IW0J/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<server_feature_value>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	mov	lr, r2
               	mov	r2, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r12, r3
               	mov	r3, r0
               	mov	r0, r1
               	mov	r1, r3
               	mov	r3, lr
               	str.w	r12, [sp]
               	bl	0x22 <server_feature_value+0x22> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
