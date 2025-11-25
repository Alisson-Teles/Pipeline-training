
/tmp/tmp.eCgkoZvS5K/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<npy_half_lt>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	mov	r5, r0
               	bl	0x8 <npy_half_lt+0x8>   @ imm = #-0x4
               	cbnz	r0, 0x16 <npy_half_lt+0x16> @ imm = #0x6
               	mov	r0, r4
               	bl	0x10 <npy_half_lt+0x10> @ imm = #-0x4
               	cbz	r0, 0x1a <npy_half_lt+0x1a> @ imm = #0x2
               	movs	r0, #0x0
               	pop	{r4, r5, r7, pc}
               	mov	r0, r5
               	mov	r1, r4
               	bl	0x1e <npy_half_lt+0x1e> @ imm = #-0x4
               	orrs	r0, r1
               	it	ne
               	movne	r0, #0x1
               	pop	{r4, r5, r7, pc}
