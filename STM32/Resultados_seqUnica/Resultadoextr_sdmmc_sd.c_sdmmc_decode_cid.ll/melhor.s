
/tmp/tmp.TeIH0paWv8/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	strd	r1, r1, [r0, #16]
               	pop	{r7, pc}

<sdmmc_decode_cid>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	mov	r5, r0
               	bl	0x1c <sdmmc_decode_cid+0x8> @ imm = #-0x4
               	str	r0, [r4, #0x14]
               	mov	r0, r5
               	bl	0x24 <sdmmc_decode_cid+0x10> @ imm = #-0x4
               	ldr	r1, [r4, #0xc]
               	str	r0, [r4, #0x10]
               	mov	r0, r5
               	bl	0x2e <sdmmc_decode_cid+0x1a> @ imm = #-0x4
               	mov	r0, r5
               	bl	0x34 <sdmmc_decode_cid+0x20> @ imm = #-0x4
               	str	r0, [r4, #0x8]
               	mov	r0, r5
               	bl	0x3c <sdmmc_decode_cid+0x28> @ imm = #-0x4
               	str	r0, [r4, #0x4]
               	mov	r0, r5
               	bl	0x44 <sdmmc_decode_cid+0x30> @ imm = #-0x4
               	str	r0, [r4]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop	{r4, r5, r7, pc}
