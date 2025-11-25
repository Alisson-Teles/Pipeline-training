
/tmp/tmp.C0toghwQf1/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ath_hw:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ath9k_mib_stats:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	str	r1, [r0, #0x10]
               	pop	{r7, pc}
               	nop

<ath9k_hw_update_mibstats>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r4, r1
               	ldr	r6, [r1, #0x10]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r5, r0
               	bl	0x38 <ath9k_hw_update_mibstats+0x18> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	add	r0, r6
               	ldr	r1, [r1]
               	ldr	r6, [r4, #0xc]
               	str	r0, [r4, #0x10]
               	mov	r0, r5
               	bl	0x4e <ath9k_hw_update_mibstats+0x2e> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	add	r0, r6
               	ldr	r1, [r1]
               	ldr	r6, [r4, #0x8]
               	str	r0, [r4, #0xc]
               	mov	r0, r5
               	bl	0x64 <ath9k_hw_update_mibstats+0x44> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	add	r0, r6
               	ldr	r1, [r1]
               	ldr	r6, [r4, #0x4]
               	str	r0, [r4, #0x8]
               	mov	r0, r5
               	bl	0x7a <ath9k_hw_update_mibstats+0x5a> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	add	r0, r6
               	ldr	r1, [r1]
               	ldr	r6, [r4]
               	str	r0, [r4, #0x4]
               	mov	r0, r5
               	bl	0x90 <ath9k_hw_update_mibstats+0x70> @ imm = #-0x4
               	add	r0, r6
               	str	r0, [r4]
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
