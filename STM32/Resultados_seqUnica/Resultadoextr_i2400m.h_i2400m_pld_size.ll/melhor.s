
/tmp/tmp.e8TuqHdhri/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<i2400m_pld:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<i2400m_pld_size>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r4, [r1]
               	bl	0x1c <i2400m_pld_size+0x10> @ imm = #-0x4
               	ands	r0, r4
               	pop	{r4, r6, r7, pc}
