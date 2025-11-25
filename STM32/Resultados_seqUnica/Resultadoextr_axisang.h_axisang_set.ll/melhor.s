
/tmp/tmp.MiV814xKr5/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<axisang:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<axisang_set>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr.w	r12, [r7, #0x8]
               	stm.w	r0, {r1, r2, r3, r12}
               	pop	{r7, pc}
