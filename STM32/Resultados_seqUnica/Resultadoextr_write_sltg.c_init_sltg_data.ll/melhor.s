
/tmp/tmp.1PMa5DDiug/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<sltg_data:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<init_sltg_data>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	movs	r0, #0x0
               	strd	r0, r0, [r4, #8]
               	movs	r0, #0x10
               	str	r0, [r4]
               	bl	0x20 <init_sltg_data+0x10> @ imm = #-0x4
               	str	r0, [r4, #0x4]
               	pop	{r4, r6, r7, pc}
