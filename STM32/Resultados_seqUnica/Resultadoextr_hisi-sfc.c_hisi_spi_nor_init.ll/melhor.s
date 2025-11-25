
/tmp/tmp.pPX12KMKqc/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<hifmc_host:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<hisi_spi_nor_init>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r4, r0
               	mov	r0, r1
               	bl	0x1e <hisi_spi_nor_init+0x12> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r5, r0
               	mov	r0, r1
               	bl	0x30 <hisi_spi_nor_init+0x24> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	orrs	r5, r0
               	mov	r0, r1
               	bl	0x42 <hisi_spi_nor_init+0x36> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldrd	r1, r3, [r4]
               	ldm	r2, {r2, r4}
               	orrs	r0, r5
               	adds	r2, r2, r1
               	adcs	r3, r4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x5e <hisi_spi_nor_init+0x52> @ imm = #-0x4
