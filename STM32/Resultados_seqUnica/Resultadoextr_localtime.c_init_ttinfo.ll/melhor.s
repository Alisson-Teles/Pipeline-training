
/tmp/tmp.2yUBiFV86u/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ttinfo:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	str	r1, [r0, #0x10]
               	pop	{r7, pc}
               	nop

<init_ttinfo>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov.w	r12, #0x0
               	stm.w	r0, {r2, r3, r12}
               	strd	r12, r1, [r0, #12]
               	pop	{r7, pc}
