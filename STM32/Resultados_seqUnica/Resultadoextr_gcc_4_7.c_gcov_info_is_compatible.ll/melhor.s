
/tmp/tmp.JRGdlQZGa7/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<gcov_info:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<gcov_info_is_compatible>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldm	r0, {r0, r2}
               	ldm	r1, {r1, r3}
               	eors	r2, r3
               	eors	r0, r1
               	orrs	r0, r2
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	pop	{r7, pc}
