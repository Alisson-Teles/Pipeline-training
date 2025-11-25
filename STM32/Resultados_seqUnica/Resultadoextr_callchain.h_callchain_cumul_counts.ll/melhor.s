
/tmp/tmp.SY55r0nJnk/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<callchain_node:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<callchain_cumul_counts>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldm	r0, {r0, r1}
               	add	r0, r1
               	pop	{r7, pc}
