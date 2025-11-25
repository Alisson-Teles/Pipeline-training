
/tmp/tmp.40zdDcrGwT/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<task_struct:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<smack_task_getscheduler>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	pop.w	{r7, lr}
               	b.w	0x1e <smack_task_getscheduler+0x12> @ imm = #-0x4
