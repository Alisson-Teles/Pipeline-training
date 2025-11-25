
/tmp/tmp.mmNt2Jx26q/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ps_pdread>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r0, r1
               	mov	r1, r2
               	mov	r2, r3
               	bl	0xa <ps_pdread+0xa>     @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop	{r7, pc}
