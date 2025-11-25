
/tmp/tmp.aehweo8XCK/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<input_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<atp_report_fingers>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	movw	r0, #0x0
               	mov	r5, r1
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	subs	r0, r5, #0x1
               	clz	r0, r0
               	lsrs	r2, r0, #0x5
               	mov	r0, r4
               	bl	0x28 <atp_report_fingers+0x1c> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	subs	r0, r5, #0x2
               	clz	r0, r0
               	lsrs	r2, r0, #0x5
               	mov	r0, r4
               	bl	0x40 <atp_report_fingers+0x34> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	movs	r2, #0x0
               	cmp	r5, #0x2
               	it	gt
               	movgt	r2, #0x1
               	mov	r0, r4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x5c <atp_report_fingers+0x50> @ imm = #-0x4
