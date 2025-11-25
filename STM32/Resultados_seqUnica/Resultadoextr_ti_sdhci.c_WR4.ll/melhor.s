
/tmp/tmp.uOjbrwKxj7/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ti_sdhci_softc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<WR4>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldrd	r1, lr, [r0]
               	ldr.w	r12, [r7, #0x8]
               	ldr	r0, [r0, #0x8]
               	adds	r2, r2, r1
               	adc.w	r3, r3, lr
               	str.w	r12, [r7, #0x8]
               	pop.w	{r7, lr}
               	b.w	0x2c <WR4+0x1c>         @ imm = #-0x4
