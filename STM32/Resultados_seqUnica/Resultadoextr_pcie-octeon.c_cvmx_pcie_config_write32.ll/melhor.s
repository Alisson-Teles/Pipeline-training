
/tmp/tmp.Bg7okjF9zF/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<cvmx_pcie_config_write32>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	sub	sp, #0x8
               	ldrd	r6, r4, [r7, #8]
               	str	r6, [sp]
               	bl	0x10 <cvmx_pcie_config_write32+0x10> @ imm = #-0x4
               	mov	r5, r0
               	orrs	r0, r1
               	beq	0x36 <cvmx_pcie_config_write32+0x36> @ imm = #0x1a
               	mov	r0, r4
               	mov	r6, r1
               	bl	0x1e <cvmx_pcie_config_write32+0x1e> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r5
               	mov	r1, r6
               	add	sp, #0x8
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x32 <cvmx_pcie_config_write32+0x32> @ imm = #-0x4
               	add	sp, #0x8
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
