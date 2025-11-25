
/tmp/tmp.C8YeyFPMqW/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<dtsec_cfg:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x94
               	bl	0x6 <dtsec_cfg:init+0x6> @ imm = #-0x4
               	pop	{r7, pc}

<fman_dtsec_defconfig>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movw	r2, #0x0
               	ldr.w	r12, [r1]
               	movt	r2, #0x0
               	movw	r1, #0x0
               	ldr.w	lr, [r2]
               	movt	r1, #0x0
               	movw	r2, #0x0
               	movw	r3, #0x0
               	ldr	r1, [r1]
               	movt	r2, #0x0
               	movt	r3, #0x0
               	ldr	r2, [r2]
               	add.w	r4, r0, #0x80
               	ldr	r3, [r3]
               	stm.w	r4, {r1, r2, r3, lr}
               	movw	r2, #0x0
               	movw	r1, #0x0
               	movt	r2, #0x0
               	movt	r1, #0x0
               	ldr.w	lr, [r2]
               	movw	r2, #0x0
               	movw	r4, #0x0
               	str.w	r12, [r0, #0x90]
               	ldr.w	r12, [r1]
               	movw	r1, #0x0
               	movt	r2, #0x0
               	movt	r4, #0x0
               	movt	r1, #0x0
               	ldr	r2, [r2]
               	ldr	r4, [r4]
               	movw	r3, #0x0
               	ldr	r1, [r1]
               	movt	r3, #0x0
               	strd	r4, r2, [r0, #104]
               	add.w	r2, r0, #0x70
               	ldr	r3, [r3]
               	movw	r5, #0x0
               	movw	r6, #0x0
               	stm.w	r2, {r1, r3, lr}
               	movw	r1, #0x0
               	movt	r5, #0x0
               	movt	r6, #0x0
               	movt	r1, #0x0
               	ldr	r5, [r5]
               	ldr	r6, [r6]
               	str.w	r12, [r0, #0x7c]
               	ldr.w	r12, [r1]
               	movw	r2, #0x0
               	movw	r1, #0x0
               	movt	r2, #0x0
               	movt	r1, #0x0
               	strd	r5, r6, [r0, #96]
               	ldr.w	lr, [r2]
               	movw	r6, #0x0
               	movw	r5, #0x0
               	movw	r4, #0x0
               	ldr	r1, [r1]
               	movw	r2, #0x0
               	movw	r3, #0x0
               	movt	r6, #0x0
               	movt	r5, #0x0
               	movt	r4, #0x0
               	movt	r2, #0x0
               	add.w	r11, r0, #0x40
               	movt	r3, #0x0
               	ldr	r6, [r6]
               	ldr	r5, [r5]
               	ldr	r4, [r4]
               	ldr	r2, [r2]
               	stm.w	r11, {r1, r2, r4, r5, r6}
               	movw	r1, #0x0
               	ldr	r3, [r3]
               	movt	r1, #0x0
               	movw	r2, #0x0
               	str.w	r12, [r0, #0x5c]
               	ldr.w	r12, [r1]
               	movt	r2, #0x0
               	movw	r1, #0x0
               	strd	r3, lr, [r0, #84]
               	ldr.w	lr, [r2]
               	movt	r1, #0x0
               	movw	r2, #0x0
               	movw	r6, #0x0
               	movw	r5, #0x0
               	movw	r4, #0x0
               	ldr	r1, [r1]
               	movt	r2, #0x0
               	movt	r6, #0x0
               	movt	r5, #0x0
               	movt	r4, #0x0
               	ldr	r2, [r2]
               	add.w	r11, r0, #0x20
               	ldr	r6, [r6]
               	ldr	r5, [r5]
               	ldr	r4, [r4]
               	stm.w	r11, {r1, r2, r4, r5, r6}
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	movw	r3, #0x0
               	strd	r2, r1, [r0, #24]
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	movt	r3, #0x0
               	strd	r2, r1, [r0, #16]
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	ldr	r3, [r3]
               	strd	r2, r1, [r0, #8]
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	strd	r3, lr, [r0, #52]
               	str.w	r12, [r0, #0x3c]
               	strd	r2, r1, [r0]
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
