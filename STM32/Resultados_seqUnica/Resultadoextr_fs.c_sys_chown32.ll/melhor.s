
/tmp/tmp.eENFGOeO4i/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<sys_chown32>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	mov	r12, r2
               	mov	r2, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r3, r0
               	mov.w	lr, #0x0
               	mov	r0, r1
               	mov	r1, r3
               	mov	r3, r12
               	str.w	lr, [sp]
               	bl	0x24 <sys_chown32+0x24> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
