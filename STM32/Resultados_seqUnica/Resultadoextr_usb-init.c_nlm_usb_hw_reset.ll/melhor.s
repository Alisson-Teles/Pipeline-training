
/tmp/tmp.ZprA89Wk0Q/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<nlm_usb_hw_reset>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	bl	0x4 <nlm_usb_hw_reset+0x4> @ imm = #-0x4
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldr	r1, [r5]
               	mov	r4, r0
               	bl	0x14 <nlm_usb_hw_reset+0x14> @ imm = #-0x4
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	movw	r3, #0x0
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	movt	r3, #0x0
               	ldr	r3, [r3]
               	orrs	r1, r2
               	orr.w	r2, r1, r3
               	ldr	r1, [r5]
               	bic.w	r2, r0, r2
               	mov	r0, r4
               	bl	0x44 <nlm_usb_hw_reset+0x44> @ imm = #-0x4
               	movs	r0, #0x64
               	bl	0x4a <nlm_usb_hw_reset+0x4a> @ imm = #-0x4
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldr	r1, [r5]
               	mov	r0, r4
               	bl	0x5a <nlm_usb_hw_reset+0x5a> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	bics	r0, r1
               	ldr	r1, [r5]
               	orr	r2, r0, #0x4
               	mov	r0, r4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x76 <nlm_usb_hw_reset+0x76> @ imm = #-0x4
