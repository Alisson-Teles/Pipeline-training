
/tmp/tmp.6iNNeoaffg/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ath_hal:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ar5211GetCurRssi>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	bl	0x1a <ar5211GetCurRssi+0xe> @ imm = #-0x4
               	uxtb	r0, r0
               	pop	{r7, pc}
