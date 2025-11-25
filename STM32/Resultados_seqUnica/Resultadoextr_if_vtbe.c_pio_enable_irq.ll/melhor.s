
/tmp/tmp.908DccL4sZ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<vtbe_softc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<pio_enable_irq>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	ldr	r2, [r0]
               	cbz	r1, 0x1a <pio_enable_irq+0xe> @ imm = #0x4
               	cbz	r2, 0x30 <pio_enable_irq+0x24> @ imm = #0x18
               	movs	r0, #0x0
               	pop	{r4, r6, r7, pc}
               	cmp	r2, #0x1
               	bne	0x16 <pio_enable_irq+0xa> @ imm = #-0xa
               	ldr	r1, [r0, #0x4]
               	mov	r4, r0
               	mov	r0, r1
               	bl	0x24 <pio_enable_irq+0x18> @ imm = #-0x4
               	movs	r0, #0x0
               	str	r0, [r4]
               	movs	r0, #0x0
               	pop	{r4, r6, r7, pc}
               	movs	r1, #0x1
               	str	r1, [r0]
               	movw	r1, #0x0
               	ldr	r3, [r0, #0x4]
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r2, r0
               	mov	r0, r3
               	bl	0x44 <pio_enable_irq+0x38> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r4, r6, r7, pc}
