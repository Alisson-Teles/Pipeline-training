
/tmp/tmp.EeCJhtVIZa/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<apm_user:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<queue_empty>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldrd	r1, r2, [r0]
               	ldr	r3, [r0, #0xc]
               	ldr	r0, [r0, #0x8]
               	eors	r2, r3
               	eors	r0, r1
               	orrs	r0, r2
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	pop	{r7, pc}
