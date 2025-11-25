
/tmp/tmp.CYgI006gW1/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<iwm_softc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<iwm_set_pwr>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r3, #0x0
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r3, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	ldr	r3, [r3]
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	mvns	r3, r3
               	pop.w	{r7, lr}
               	b.w	0x34 <iwm_set_pwr+0x28> @ imm = #-0x4
