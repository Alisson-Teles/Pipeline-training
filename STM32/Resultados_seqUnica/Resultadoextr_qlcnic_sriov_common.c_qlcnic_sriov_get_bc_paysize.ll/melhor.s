
/tmp/tmp.esNA9h0yrq/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<qlcnic_sriov_get_bc_paysize>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r2, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	adds	r1, #0x1
               	muls	r1, r0, r1
               	sdiv	r1, r2, r1
               	cmp	r1, #0x0
               	it	ne
               	popne	{r7, pc}
               	sdiv	r1, r2, r0
               	mls	r0, r1, r0, r2
               	pop	{r7, pc}
