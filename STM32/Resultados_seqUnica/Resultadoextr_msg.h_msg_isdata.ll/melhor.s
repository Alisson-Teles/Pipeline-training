
/tmp/tmp.7wHSRtibYq/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<tipc_msg:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<msg_isdata>:
               	push	{r7, lr}
               	mov	r7, sp
               	bl	0x10 <msg_isdata+0x4>   @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r2, {r2, r3}
               	subs	r0, r2, r0
               	sbcs.w	r0, r3, r1
               	mov.w	r0, #0x0
               	it	ge
               	movge	r0, #0x1
               	pop	{r7, pc}
