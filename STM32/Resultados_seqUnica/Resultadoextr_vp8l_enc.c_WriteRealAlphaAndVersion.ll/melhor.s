
/tmp/tmp.TiLwfBxw2W/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_4__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<WriteRealAlphaAndVersion>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movs	r2, #0x1
               	mov	r4, r0
               	bl	0x14 <WriteRealAlphaAndVersion+0x8> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r2, [r0]
               	mov	r0, r4
               	bl	0x2e <WriteRealAlphaAndVersion+0x22> @ imm = #-0x4
               	ldr	r0, [r4]
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	pop	{r4, r6, r7, pc}
