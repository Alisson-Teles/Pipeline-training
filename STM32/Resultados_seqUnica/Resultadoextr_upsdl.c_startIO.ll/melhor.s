
/tmp/tmp.BQrCdlzw2g/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<startIO>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r3, r2
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	lsls	r2, r2, #0x1
               	bl	0x12 <startIO+0x12>     @ imm = #-0x4
               	adds	r0, #0x1
               	itt	ne
               	movne	r0, #0x0
               	popne	{r7, pc}
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movs	r1, #0xc
               	bl	0x28 <startIO+0x28>     @ imm = #-0x4
               	movs	r0, #0x1
               	pop	{r7, pc}
