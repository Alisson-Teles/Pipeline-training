
/tmp/tmp.lByYCXJhoB/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<service_trace>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r3, r1
               	mov	r1, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movs	r2, #0x5
               	pop.w	{r7, lr}
               	b.w	0x16 <service_trace+0x16> @ imm = #-0x4
