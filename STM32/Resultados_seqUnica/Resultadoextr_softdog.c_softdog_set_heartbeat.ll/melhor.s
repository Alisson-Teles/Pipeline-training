
/tmp/tmp.rLJPFCkER1/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<softdog_set_heartbeat>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub.w	r1, r0, #0x10000
               	cmn.w	r1, #0x10000
               	bhi	0x1c <softdog_set_heartbeat+0x1c> @ imm = #0xc
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	rsbs	r0, r0, #0
               	pop	{r7, pc}
               	movw	r1, #0x0
               	movt	r1, #0x0
               	str	r0, [r1]
               	movs	r0, #0x0
               	pop	{r7, pc}
