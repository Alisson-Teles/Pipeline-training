
/tmp/tmp.glBUbldPKN/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<task_struct:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<cgroup_scanner:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<cpuset_change_flag>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	ldr	r1, [r1]
               	mov	r4, r0
               	mov	r0, r1
               	bl	0x22 <cpuset_change_flag+0xa> @ imm = #-0x4
               	mov	r1, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x2c <cpuset_change_flag+0x14> @ imm = #-0x4
