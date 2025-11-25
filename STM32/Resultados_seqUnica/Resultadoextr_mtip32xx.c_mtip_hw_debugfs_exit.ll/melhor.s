
/tmp/tmp.5h1BNCztkh/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<driver_data:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mtip_hw_debugfs_exit>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	pop.w	{r7, lr}
               	b.w	0x16 <mtip_hw_debugfs_exit+0xa> @ imm = #-0x4
