
/tmp/tmp.wsgPqN3UJP/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<putEntry>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r5, r0
               	movw	r0, #0x0
               	mov	r4, r1
               	movt	r0, #0x0
               	movs	r1, #0x3
               	bl	0x12 <putEntry+0x12>    @ imm = #-0x4
               	mov	r0, r5
               	bl	0x18 <putEntry+0x18>    @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movs	r1, #0x3
               	bl	0x26 <putEntry+0x26>    @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x30 <putEntry+0x30>    @ imm = #-0x4
