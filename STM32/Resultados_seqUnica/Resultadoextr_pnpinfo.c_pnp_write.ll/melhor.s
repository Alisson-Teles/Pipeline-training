
/tmp/tmp.eNqP9UIq5m/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<pnp_write>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r2, r0
               	mov	r0, r1
               	mov	r1, r2
               	bl	0x16 <pnp_write+0x16>   @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	mov	r1, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x2a <pnp_write+0x2a>   @ imm = #-0x4
