
/tmp/tmp.z0DInnFiKu/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<aacch_probe>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x6 <aacch_probe+0x6>   @ imm = #-0x4
               	movw	r1, #0x9005
               	cmp	r0, r1
               	bne	0x32 <aacch_probe+0x32> @ imm = #0x1e
               	mov	r0, r4
               	bl	0x14 <aacch_probe+0x14> @ imm = #-0x4
               	cmp	r0, #0xc5
               	bne	0x32 <aacch_probe+0x32> @ imm = #0x14
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r4
               	movs	r2, #0x10
               	bl	0x28 <aacch_probe+0x28> @ imm = #-0x4
               	mvn	r0, #0x9
               	pop	{r4, r6, r7, pc}
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop	{r4, r6, r7, pc}
