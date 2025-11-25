
/tmp/tmp.9MbGK52SlM/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<refreshScreen>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r1, [r0, #0xc]
               	ldr	r0, [r0, #0x8]
               	orrs	r0, r1
               	beq	0x24 <refreshScreen+0x14> @ imm = #0x4
               	ldr	r0, [r4, #0x4]
               	bl	0x20 <refreshScreen+0x10> @ imm = #-0x4
               	ldr	r0, [r4, #0x4]
               	bl	0x26 <refreshScreen+0x16> @ imm = #-0x4
               	movs	r0, #0x0
               	str	r0, [r4]
               	pop	{r4, r6, r7, pc}
