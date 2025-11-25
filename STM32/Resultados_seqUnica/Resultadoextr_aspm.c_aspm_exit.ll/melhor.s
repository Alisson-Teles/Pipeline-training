
/tmp/tmp.rql6YowHWE/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<hfi1_devdata:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<aspm_exit>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <aspm_exit+0x6>    @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x1c <aspm_exit+0x10>   @ imm = #-0x4
