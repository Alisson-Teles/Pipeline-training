
/tmp/tmp.CErulf3JNE/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<imx6_anatop_probe>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x6 <imx6_anatop_probe+0x6> @ imm = #-0x4
               	cbz	r0, 0x3c <imx6_anatop_probe+0x3c> @ imm = #0x2e
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r4
               	movs	r2, #0x10
               	bl	0x18 <imx6_anatop_probe+0x18> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x3c <imx6_anatop_probe+0x3c> @ imm = #0x1a
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r4
               	movs	r2, #0x25
               	bl	0x2c <imx6_anatop_probe+0x2c> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop	{r4, r6, r7, pc}
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop	{r4, r6, r7, pc}
