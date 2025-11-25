
/tmp/tmp.4ui2D4llTN/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<usage>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	mov	r12, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r3, [r1]
               	movw	r1, #0x0
               	mov	r2, r0
               	movt	r1, #0x0
               	mov	r0, r3
               	movs	r3, #0x49
               	str.w	r12, [sp]
               	bl	0x24 <usage+0x24>       @ imm = #-0x4
               	mov.w	r0, #0xffffffff
               	add	sp, #0x8
               	pop.w	{r7, lr}
               	b.w	0x32 <usage+0x32>       @ imm = #-0x4
