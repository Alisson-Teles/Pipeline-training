
/tmp/tmp.dCFEj0hsnO/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mdioproxy_detach>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x6 <mdioproxy_detach+0x6> @ imm = #-0x4
               	mov	r0, r4
               	bl	0xc <mdioproxy_detach+0xc> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r4, r6, r7, pc}
