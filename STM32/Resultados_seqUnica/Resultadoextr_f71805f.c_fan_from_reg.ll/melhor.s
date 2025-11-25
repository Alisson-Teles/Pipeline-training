
/tmp/tmp.HfwTDRYher/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<fan_from_reg>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r2, r0
               	bfc	r2, #12, #20
               	movw	r0, #0xfff
               	cmp	r2, r0
               	mov.w	r0, #0x0
               	beq	0x2e <fan_from_reg+0x2e> @ imm = #0x16
               	cmp	r2, #0x0
               	mov.w	r1, #0x0
               	it	eq
               	popeq	{r7, pc}
               	movw	r0, #0xe360
               	movt	r0, #0x16
               	udiv	r0, r0, r2
               	pop	{r7, pc}
               	movs	r1, #0x0
               	pop	{r7, pc}
