
/tmp/tmp.0jdzYkhhM6/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<worktree:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<is_main_worktree>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	pop	{r7, pc}
