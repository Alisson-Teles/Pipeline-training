
/tmp/tmp.scG8sjxT7H/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<pci_power_reset>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r4, r0
               	bl	0xa <pci_power_reset+0xa> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	movw	r6, #0x0
               	mov	r5, r0
               	cmp	r0, r1
               	movt	r6, #0x0
               	beq	0x32 <pci_power_reset+0x32> @ imm = #0xa
               	ldr	r0, [r6]
               	cmp	r5, r0
               	beq	0x32 <pci_power_reset+0x32> @ imm = #0x4
               	mov	r0, r4
               	bl	0x2e <pci_power_reset+0x2e> @ imm = #-0x4
               	ldr	r1, [r6]
               	mov	r0, r4
               	bl	0x36 <pci_power_reset+0x36> @ imm = #-0x4
               	mov	r0, r4
               	mov	r1, r5
               	bl	0x3e <pci_power_reset+0x3e> @ imm = #-0x4
               	movs	r0, #0x0
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
