
/tmp/tmp.oO9ZpHG9Ao/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<kvm_vcpu:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<svm_vcpu_unblocking>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x1
               	pop.w	{r7, lr}
               	b.w	0x16 <svm_vcpu_unblocking+0xa> @ imm = #-0x4
