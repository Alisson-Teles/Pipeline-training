
/tmp/tmp.6QhjCo8ILY/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<kvm_vcpu:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<kvm_arch_vcpu_load>:
               	push	{r7, lr}
               	mov	r7, sp
               	pop.w	{r7, lr}
               	b.w	0x14 <kvm_arch_vcpu_load+0x8> @ imm = #-0x4
