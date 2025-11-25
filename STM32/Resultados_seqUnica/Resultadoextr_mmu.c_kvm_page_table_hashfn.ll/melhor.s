
/tmp/tmp.vEEVbazDq7/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<kvm_page_table_hashfn>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	bl	0xe <kvm_page_table_hashfn+0xe> @ imm = #-0x4
               	pop	{r7, pc}
