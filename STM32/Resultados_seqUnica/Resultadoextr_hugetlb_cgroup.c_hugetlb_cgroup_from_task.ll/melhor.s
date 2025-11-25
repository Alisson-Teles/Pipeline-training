
/tmp/tmp.BtOg0tzjCc/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<task_struct:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<hugetlb_cgroup:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<hugetlb_cgroup_from_task>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	bl	0x26 <hugetlb_cgroup_from_task+0xe> @ imm = #-0x4
               	pop.w	{r7, lr}
               	b.w	0x2e <hugetlb_cgroup_from_task+0x16> @ imm = #-0x4
