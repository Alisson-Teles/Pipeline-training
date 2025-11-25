
/tmp/tmp.wEpx1WcPbU/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<kvm_mips_gpa_pte_to_gva_mapped>:
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldrd	r12, r1, [r1]
               	ands	r1, r3
               	and.w	r2, r2, r12
               	orrs	r1, r2
               	it	ne
               	bne.w	0x16 <kvm_mips_gpa_pte_to_gva_mapped+0x16> @ imm = #-0x4
               	push	{r7, lr}
               	mov	r7, sp
               	bl	0x1e <kvm_mips_gpa_pte_to_gva_mapped+0x1e> @ imm = #-0x4
               	pop.w	{r7, lr}
               	b.w	0x26 <kvm_mips_gpa_pte_to_gva_mapped+0x26> @ imm = #-0x4
