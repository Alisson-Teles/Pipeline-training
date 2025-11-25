
/tmp/tmp.1Pa71ZXrwO/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<msqid_kernel:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mac_sysvmsq_label_associate>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r2, r1
               	mov	r1, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	ldr	r3, [r2]
               	pop.w	{r7, lr}
               	b.w	0x24 <mac_sysvmsq_label_associate+0x18> @ imm = #-0x4
