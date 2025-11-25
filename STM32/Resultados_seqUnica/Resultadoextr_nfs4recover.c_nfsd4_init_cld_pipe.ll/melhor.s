
/tmp/tmp.PHVAYf4zNk/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<net:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<nfsd4_init_cld_pipe>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	bl	0x10 <nfsd4_init_cld_pipe+0x4> @ imm = #-0x4
               	cmp	r0, #0x0
               	it	ne
               	popne	{r4, r6, r7, pc}
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r4, r0
               	mov	r0, r1
               	movs	r1, #0x34
               	bl	0x28 <nfsd4_init_cld_pipe+0x1c> @ imm = #-0x4
               	mov	r0, r4
               	pop	{r4, r6, r7, pc}
