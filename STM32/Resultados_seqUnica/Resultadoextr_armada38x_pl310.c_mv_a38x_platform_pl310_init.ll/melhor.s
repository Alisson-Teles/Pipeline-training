
/tmp/tmp.1U9mq3c6B3/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<pl310_softc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mv_a38x_platform_pl310_init>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldr	r2, [r5]
               	mov	r4, r1
               	mov	r0, r1
               	mov	r1, r2
               	bl	0x20 <mv_a38x_platform_pl310_init+0x14> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r2, [r1]
               	ldr	r1, [r5]
               	orrs	r2, r0
               	mov	r0, r4
               	bl	0x34 <mv_a38x_platform_pl310_init+0x28> @ imm = #-0x4
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	movw	r2, #0x0
               	orrs	r0, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	movt	r2, #0x0
               	orrs	r0, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r3, [r1]
               	ldr	r1, [r2]
               	orr.w	r2, r0, r3
               	mov	r0, r4
               	bl	0x74 <mv_a38x_platform_pl310_init+0x68> @ imm = #-0x4
               	movs	r0, #0x1
               	str	r0, [r4]
               	pop	{r4, r5, r7, pc}
