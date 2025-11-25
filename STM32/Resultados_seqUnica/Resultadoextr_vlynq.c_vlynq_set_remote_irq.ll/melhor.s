
/tmp/tmp.wLgtJ0RAHb/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<vlynq_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	strd	r1, r1, [r0, #16]
               	pop	{r7, pc}

<vlynq_set_remote_irq>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldrd	r2, r3, [r0, #16]
               	orrs	r2, r3
               	beq	0x2a <vlynq_set_remote_irq+0x16> @ imm = #0x8
               	movw	r0, #0x0
               	movt	r0, #0x0
               	b	0x46 <vlynq_set_remote_irq+0x32> @ imm = #0x1a
               	ldr	r3, [r0]
               	adds	r2, r3, r1
               	cmp	r2, r3
               	blt	0x3e <vlynq_set_remote_irq+0x2a> @ imm = #0xa
               	ldr	r3, [r0, #0x4]
               	cmp	r2, r3
               	bgt	0x3e <vlynq_set_remote_irq+0x2a> @ imm = #0x4
               	ldr	r2, [r0, #0x8]
               	cmp	r1, r2
               	bne	0x4c <vlynq_set_remote_irq+0x38> @ imm = #0xc
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	rsbs	r0, r0, #0
               	pop	{r7, pc}
               	str	r1, [r0, #0xc]
               	movs	r0, #0x0
               	pop	{r7, pc}
