
/tmp/tmp.FwxCqOeBs2/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<bs_set_clip>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r12, #0x0
               	movt	r12, #0x0
               	str.w	r0, [r12]
               	movw	r12, #0x0
               	add	r0, r2
               	movw	r2, #0x0
               	movt	r12, #0x0
               	movt	r2, #0x0
               	str.w	r1, [r12]
               	str	r0, [r2]
               	adds	r0, r3, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	str	r0, [r1]
               	pop	{r7, pc}
