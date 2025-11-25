
/tmp/tmp.A9jwhRa1JE/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<vxlan_ftable_entry:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<vxlan_ftable_entry_free>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	pop.w	{r7, lr}
               	b.w	0x1e <vxlan_ftable_entry_free+0x12> @ imm = #-0x4
