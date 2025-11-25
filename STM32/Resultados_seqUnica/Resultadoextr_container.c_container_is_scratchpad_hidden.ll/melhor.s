
/tmp/tmp.7JrrrvVs0E/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<sway_container:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0, #8]
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<container_is_scratchpad_hidden>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldrd	r1, r2, [r0, #8]
               	orrs	r1, r2
               	iteee	eq
               	moveq	r0, #0x0
               	ldrne	r0, [r0]
               	clzne	r0, r0
               	lsrne	r0, r0, #0x5
               	pop	{r7, pc}
