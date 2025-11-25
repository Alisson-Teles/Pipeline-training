
/tmp/tmp.6nO6Pvurh7/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<nfp_nsp:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<nfp_nsp_has_hwinfo_lookup>:
               	push	{r7, lr}
               	mov	r7, sp
               	bl	0x10 <nfp_nsp_has_hwinfo_lookup+0x4> @ imm = #-0x4
               	cmp	r0, #0x18
               	mov.w	r0, #0x0
               	it	gt
               	movgt	r0, #0x1
               	pop	{r7, pc}
