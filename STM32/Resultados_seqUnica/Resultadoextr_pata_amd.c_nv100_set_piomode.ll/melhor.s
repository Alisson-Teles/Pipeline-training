
/tmp/tmp.wWs5fvoONB/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ata_port:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ata_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<nv100_set_piomode>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	ldr	r3, [r1]
               	mov.w	r12, #0x3
               	movs	r2, #0x50
               	str.w	r12, [sp]
               	bl	0x2a <nv100_set_piomode+0x12> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
