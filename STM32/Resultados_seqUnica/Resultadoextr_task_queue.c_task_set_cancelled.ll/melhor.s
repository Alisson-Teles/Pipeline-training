
/tmp/tmp.X0OzespqJq/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<task_set_cancelled>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	movw	r6, #0x0
               	movt	r6, #0x0
               	mov	r4, r1
               	ldr	r1, [r6]
               	mov	r5, r0
               	mov	r0, r1
               	bl	0x24 <task_set_cancelled+0x18> @ imm = #-0x4
               	str	r4, [r5]
               	ldr	r0, [r6]
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x34 <task_set_cancelled+0x28> @ imm = #-0x4
