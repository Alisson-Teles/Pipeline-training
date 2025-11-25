
/tmp/tmp.QeMvoZ3BQD/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<cpumask:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<cpumask_next_and>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	adds	r4, r0, #0x1
               	mov	r5, r2
               	mov	r6, r1
               	it	ne
               	blne	0x1c <cpumask_next_and+0x10> @ imm = #-0x4
               	mov	r0, r6
               	bl	0x22 <cpumask_next_and+0x16> @ imm = #-0x4
               	mov	r6, r0
               	mov	r0, r5
               	bl	0x2a <cpumask_next_and+0x1e> @ imm = #-0x4
               	mov	r1, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r2, [r0]
               	mov	r0, r6
               	mov	r3, r4
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x46 <cpumask_next_and+0x3a> @ imm = #-0x4
