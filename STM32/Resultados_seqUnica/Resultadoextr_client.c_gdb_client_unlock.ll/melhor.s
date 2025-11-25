
/tmp/tmp.CRXPXd1j5Y/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<gdb_client_unlock>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop.w	{r7, lr}
               	b.w	0x12 <gdb_client_unlock+0x12> @ imm = #-0x4
