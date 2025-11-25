
/tmp/tmp.D9YQfA34ST/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<exynos_pcie:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<exynos_pcie_enable_interrupts>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <exynos_pcie_enable_interrupts+0x6> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	bl	0x20 <exynos_pcie_enable_interrupts+0x14> @ imm = #-0x4
               	orrs	r0, r1
               	it	eq
               	popeq	{r4, r6, r7, pc}
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x30 <exynos_pcie_enable_interrupts+0x24> @ imm = #-0x4
