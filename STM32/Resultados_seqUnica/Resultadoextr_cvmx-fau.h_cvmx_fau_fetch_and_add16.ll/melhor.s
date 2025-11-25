
/tmp/tmp.28UmeTmEye/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<cvmx_fau_fetch_and_add16>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r2, r1
               	mov	r1, r0
               	movs	r0, #0x0
               	bl	0xa <cvmx_fau_fetch_and_add16+0xa> @ imm = #-0x4
               	pop.w	{r7, lr}
               	b.w	0x12 <cvmx_fau_fetch_and_add16+0x12> @ imm = #-0x4
