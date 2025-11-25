
/tmp/tmp.6ZaO9v1SvE/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<idset:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<idset_clear>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	ldm.w	r0, {r1, r2, r4}
               	mov	r0, r2
               	bl	0x1a <idset_clear+0xa>  @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	movs	r1, #0x0
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x28 <idset_clear+0x18> @ imm = #-0x4
