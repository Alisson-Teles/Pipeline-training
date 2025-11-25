
/tmp/tmp.AKVbKXyBQf/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<DisableKeyframes>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldm	r1, {r1, r2}
               	subs	r3, r1, #0x1
               	sbc	r12, r2, #0x0
               	stm.w	r0, {r1, r2, r3, r12}
               	pop	{r7, pc}
