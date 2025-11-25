
/tmp/tmp.OjzB2BGGw6/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<smiapp_sensor:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<jt8ev1_limits>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	movw	r2, #0x10af
               	mov	r4, r0
               	bl	0x20 <jt8ev1_limits+0x14> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	movs	r2, #0xb8
               	bl	0x32 <jt8ev1_limits+0x26> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r4, r6, r7, pc}
