
/tmp/tmp.HPHNdO5I51/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mtkswitch_softc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mtkswitch_hw_setup>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	bl	0x24 <mtkswitch_hw_setup+0x18> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r7, pc}
