
/tmp/tmp.eXvUReVvH7/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<client:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<freeFakeClient>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r0, [r0, #0x8]
               	bl	0x18 <freeFakeClient+0x8> @ imm = #-0x4
               	ldr	r0, [r4, #0x4]
               	bl	0x1e <freeFakeClient+0xe> @ imm = #-0x4
               	ldr	r0, [r4]
               	bl	0x24 <freeFakeClient+0x14> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x2a <freeFakeClient+0x1a> @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x34 <freeFakeClient+0x24> @ imm = #-0x4
