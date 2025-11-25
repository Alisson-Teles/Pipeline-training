
/tmp/tmp.6iBEC8cITE/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<acpi_nfit_system_address:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<nfit_spa_is_volatile>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <nfit_spa_is_volatile+0x6> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r2, {r2, r3}
               	eors	r1, r3
               	eors	r0, r2
               	orrs	r0, r1
               	beq	0x40 <nfit_spa_is_volatile+0x34> @ imm = #0x16
               	mov	r0, r4
               	bl	0x2a <nfit_spa_is_volatile+0x1e> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r2, {r2, r3}
               	eors	r1, r3
               	eors	r0, r2
               	orrs	r0, r1
               	bne	0x44 <nfit_spa_is_volatile+0x38> @ imm = #0x2
               	movs	r0, #0x1
               	pop	{r4, r6, r7, pc}
               	mov	r0, r4
               	bl	0x46 <nfit_spa_is_volatile+0x3a> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r2, {r2, r3}
               	eors	r1, r3
               	eors	r0, r2
               	orrs	r0, r1
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	pop	{r4, r6, r7, pc}
