
/tmp/tmp.3xN1xbSi92/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_4__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<atf_equal_map_iter_map_iter>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldrd	r12, r3, [r0]
               	ldrd	lr, r2, [r1]
               	eors	r2, r3
               	eor.w	r3, r12, lr
               	orrs	r2, r3
               	itt	ne
               	movne	r0, #0x0
               	popne	{r7, pc}
               	ldr	r2, [r0, #0xc]
               	ldr	r0, [r0, #0x8]
               	ldr	r3, [r1, #0xc]
               	ldr	r1, [r1, #0x8]
               	eors	r2, r3
               	eors	r0, r1
               	orrs	r0, r2
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	pop	{r7, pc}
