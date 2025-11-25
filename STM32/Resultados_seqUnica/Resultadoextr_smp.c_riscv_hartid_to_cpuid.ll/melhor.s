
/tmp/tmp.yiv44lZLWk/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<riscv_hartid_to_cpuid>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	movw	r6, #0x0
               	movt	r6, #0x0
               	ldr	r1, [r6]
               	mov	r5, r0
               	cmp	r1, #0x1
               	mov.w	r4, #0x0
               	blt	0x2e <riscv_hartid_to_cpuid+0x2e> @ imm = #0x10
               	mov	r0, r4
               	bl	0x1e <riscv_hartid_to_cpuid+0x1e> @ imm = #-0x4
               	cmp	r0, r5
               	beq	0x3e <riscv_hartid_to_cpuid+0x3e> @ imm = #0x16
               	ldr	r0, [r6]
               	adds	r4, #0x1
               	cmp	r4, r0
               	blt	0x1c <riscv_hartid_to_cpuid+0x1c> @ imm = #-0x14
               	movw	r0, #0x0
               	movt	r0, #0x0
               	mov	r1, r5
               	movs	r2, #0x25
               	bl	0x3a <riscv_hartid_to_cpuid+0x3a> @ imm = #-0x4
               	mov	r0, r4
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
