
/tmp/tmp.NsiSJuEwsN/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<sym_hcb:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<sym_chip_reset>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	movw	r5, #0x0
               	movw	r2, #0x0
               	movt	r5, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r5]
               	ldr	r2, [r2]
               	mov	r4, r0
               	bl	0x2a <sym_chip_reset+0x1e> @ imm = #-0x4
               	movw	r6, #0x0
               	movt	r6, #0x0
               	ldr	r1, [r6]
               	mov	r0, r4
               	bl	0x3a <sym_chip_reset+0x2e> @ imm = #-0x4
               	movs	r0, #0xa
               	bl	0x40 <sym_chip_reset+0x34> @ imm = #-0x4
               	ldr	r1, [r5]
               	mov	r0, r4
               	movs	r2, #0x0
               	bl	0x4a <sym_chip_reset+0x3e> @ imm = #-0x4
               	ldr	r1, [r6]
               	mov	r0, r4
               	bl	0x52 <sym_chip_reset+0x46> @ imm = #-0x4
               	mov.w	r0, #0x7d0
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x62 <sym_chip_reset+0x56> @ imm = #-0x4
