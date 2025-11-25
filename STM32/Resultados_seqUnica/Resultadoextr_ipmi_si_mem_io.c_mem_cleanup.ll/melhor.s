
/tmp/tmp.NT7UaaNHSV/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<si_sm_io:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0, #8]
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mem_cleanup>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r1, [r0, #0xc]
               	ldr	r0, [r0, #0x8]
               	orrs.w	r2, r0, r1
               	it	eq
               	popeq	{r4, r6, r7, pc}
               	bl	0x22 <mem_cleanup+0x12> @ imm = #-0x4
               	ldr	r1, [r4]
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x2e <mem_cleanup+0x1e> @ imm = #-0x4
