
/tmp/tmp.90qT2Fhk0S/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<task_get_mute>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldr	r1, [r5]
               	mov	r4, r0
               	mov	r0, r1
               	bl	0x1e <task_get_mute+0x12> @ imm = #-0x4
               	ldr	r0, [r5]
               	ldr	r4, [r4]
               	bl	0x26 <task_get_mute+0x1a> @ imm = #-0x4
               	mov	r0, r4
               	pop	{r4, r5, r7, pc}
