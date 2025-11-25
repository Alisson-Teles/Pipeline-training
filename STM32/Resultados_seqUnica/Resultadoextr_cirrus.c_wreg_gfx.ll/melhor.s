
/tmp/tmp.XCli7cxV7d/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<cirrus_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<wreg_gfx>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	mov	r8, r2
               	mov	r5, r0
               	ldrd	r2, r3, [r0]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldrd	r4, r6, [r0]
               	mov	r0, r1
               	adds	r2, r2, r4
               	adcs	r3, r6
               	bl	0x2e <wreg_gfx+0x22>    @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldrd	r0, r1, [r5]
               	ldm	r2, {r2, r3}
               	adds	r2, r2, r0
               	adcs	r3, r1
               	mov	r0, r8
               	ldr	r8, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x4e <wreg_gfx+0x42>    @ imm = #-0x4
