
/tmp/tmp.HKPsuXz4tK/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<hwicap_drvdata:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0, #8]
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<fifo_icap_fifo_read>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r2, #0x0
               	movt	r2, #0x0
               	mov	r4, r0
               	ldr	r1, [r0, #0xc]
               	ldr	r0, [r0, #0x8]
               	ldm	r2, {r2, r3}
               	adds	r0, r0, r2
               	adcs	r1, r3
               	bl	0x28 <fifo_icap_fifo_read+0x18> @ imm = #-0x4
               	ldr	r2, [r4]
               	mov	r4, r0
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r2
               	mov	r2, r4
               	movs	r3, #0xe
               	bl	0x3e <fifo_icap_fifo_read+0x2e> @ imm = #-0x4
               	mov	r0, r4
               	pop	{r4, r6, r7, pc}
