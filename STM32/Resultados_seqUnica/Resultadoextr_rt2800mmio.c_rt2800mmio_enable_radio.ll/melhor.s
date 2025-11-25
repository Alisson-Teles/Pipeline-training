
/tmp/tmp.GPFVYH4Zos/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<rt2x00_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<rt2800mmio_enable_radio>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <rt2800mmio_enable_radio+0x6> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x18 <rt2800mmio_enable_radio+0xc> @ imm = #-0x4
               	bl	0x1c <rt2800mmio_enable_radio+0x10> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x32 <rt2800mmio_enable_radio+0x26> @ imm = #0xc
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	rsbs	r0, r0, #0
               	pop	{r4, r6, r7, pc}
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x38 <rt2800mmio_enable_radio+0x2c> @ imm = #-0x4
