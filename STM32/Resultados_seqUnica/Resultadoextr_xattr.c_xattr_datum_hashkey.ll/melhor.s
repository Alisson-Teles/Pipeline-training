
/tmp/tmp.9d4oIgeFiz/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<xattr_datum_hashkey>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r10}
               	ldrd	r9, r8, [r7, #8]
               	mov	r6, r1
               	mov	r4, r0
               	mov	r0, r1
               	mov	r1, r9
               	mov	r10, r3
               	mov	r5, r2
               	bl	0x18 <xattr_datum_hashkey+0x18> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	mov	r1, r6
               	mov	r3, r9
               	bl	0x24 <xattr_datum_hashkey+0x24> @ imm = #-0x4
               	mov	r6, r0
               	mov	r0, r4
               	mov	r1, r5
               	mov	r2, r10
               	mov	r3, r8
               	bl	0x32 <xattr_datum_hashkey+0x32> @ imm = #-0x4
               	eors	r0, r6
               	pop.w	{r8, r9, r10}
               	pop	{r4, r5, r6, r7, pc}
