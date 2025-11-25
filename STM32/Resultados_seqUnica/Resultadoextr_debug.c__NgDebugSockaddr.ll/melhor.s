
/tmp/tmp.ncYncNTeBN/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<sockaddr_ng:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<_NgDebugSockaddr>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	ldrd	r3, r2, [r0]
               	ldr	r1, [r0, #0x8]
               	movw	r0, #0x0
               	mov.w	r12, #0x25
               	movt	r0, #0x0
               	str.w	r12, [sp]
               	bl	0x2c <_NgDebugSockaddr+0x1c> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
