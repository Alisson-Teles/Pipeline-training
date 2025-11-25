
/tmp/tmp.iw3B5TwJ4j/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<sc_info:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<m3_uninit>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movs	r2, #0xa
               	bl	0x24 <m3_uninit+0x18>   @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r7, pc}
