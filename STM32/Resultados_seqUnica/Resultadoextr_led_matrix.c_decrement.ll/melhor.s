
/tmp/tmp.MogJmvBd0E/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<decrement>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	add.w	r8, r7, #0x8
               	ldm.w	r8, {r4, r5, r6, r8}
               	subs	r0, r0, r2
               	sbcs	r1, r3
               	mov	r2, r4
               	mov	r3, r5
               	bl	0x18 <decrement+0x18>   @ imm = #-0x4
               	mov	r2, r6
               	mov	r3, r8
               	ldr	r8, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x28 <decrement+0x28>   @ imm = #-0x4
