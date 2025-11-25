
/tmp/tmp.jyivgQY9Df/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<dstr_disconnect>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	movs	r0, #0x30
               	bl	0x14 <dstr_disconnect+0x8> @ imm = #-0x4
               	ldr	r0, [r4, #0x4]
               	bl	0x1a <dstr_disconnect+0xe> @ imm = #-0x4
               	ldr	r0, [r4]
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x24 <dstr_disconnect+0x18> @ imm = #-0x4
