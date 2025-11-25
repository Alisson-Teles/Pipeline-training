
/tmp/tmp.ZI47v60Pis/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<rt5350_rxcsum_config>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldr	r1, [r5]
               	mov	r4, r0
               	mov	r0, r1
               	bl	0x12 <rt5350_rxcsum_config+0x12> @ imm = #-0x4
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movw	r3, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	movt	r3, #0x0
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	ldr	r3, [r3]
               	cbz	r4, 0x3e <rt5350_rxcsum_config+0x3e> @ imm = #0x6
               	orrs	r0, r3
               	orrs	r0, r1
               	orrs	r0, r2
               	b	0x44 <rt5350_rxcsum_config+0x44> @ imm = #0x4
               	orrs	r1, r3
               	orrs	r1, r2
               	bics	r0, r1
               	ldr	r1, [r5]
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x4a <rt5350_rxcsum_config+0x4a> @ imm = #-0x4
