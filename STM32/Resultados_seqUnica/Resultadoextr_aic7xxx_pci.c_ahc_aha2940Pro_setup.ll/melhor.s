
/tmp/tmp.T8CpaNfQlH/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ahc_softc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ahc_aha2940Pro_setup>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r0]
               	ldr	r2, [r2]
               	orrs	r1, r2
               	str	r1, [r0]
               	pop.w	{r7, lr}
               	b.w	0x24 <ahc_aha2940Pro_setup+0x18> @ imm = #-0x4
