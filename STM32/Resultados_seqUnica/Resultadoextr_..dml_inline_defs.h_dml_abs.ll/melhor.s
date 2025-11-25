
/tmp/tmp.SX5Unyb27s/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<dml_abs>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movs	r2, #0x0
               	movs	r3, #0x0
               	mov	r4, r1
               	mov	r5, r0
               	bl	0xc <dml_abs+0xc>       @ imm = #-0x4
               	cmp	r0, #0x0
               	it	eq
               	eoreq	r4, r4, #0x80000000
               	mov	r0, r5
               	mov	r1, r4
               	pop	{r4, r5, r7, pc}
