
/tmp/tmp.vajLMbKek1/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<file_lock:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<locks_conflict>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldrd	r12, r3, [r1]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldrd	lr, r2, [r1]
               	eors	r3, r2
               	eor.w	r1, r12, lr
               	orrs	r1, r3
               	itt	eq
               	moveq	r0, #0x1
               	popeq	{r7, pc}
               	ldm	r0, {r0, r1}
               	eors	r1, r2
               	eor.w	r0, r0, lr
               	orrs	r0, r1
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	pop	{r7, pc}
