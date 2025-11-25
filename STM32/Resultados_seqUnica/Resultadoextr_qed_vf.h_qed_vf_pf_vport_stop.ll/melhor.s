
/tmp/tmp.XcI5aWcAKv/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<qed_hwfn:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<qed_vf_pf_vport_stop>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	rsbs	r0, r0, #0
               	pop	{r7, pc}
