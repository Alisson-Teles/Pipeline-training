
/tmp/tmp.ZFstsdTbjg/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<s6e8aa0:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<s6e8aa0_clear_error>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r1, r0
               	ldr	r0, [r0]
               	movs	r2, #0x0
               	str	r2, [r1]
               	pop	{r7, pc}
