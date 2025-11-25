
/tmp/tmp.FdvsYoZcZx/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<kernel_param:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<param_get_ac_online>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r3, [r1]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r4, r2
               	ldr	r1, [r1]
               	movw	r2, #0x0
               	mov	r5, r0
               	movt	r2, #0x0
               	mov	r0, r3
               	movs	r3, #0x7
               	bl	0x34 <param_get_ac_online+0x28> @ imm = #-0x4
               	mov	r1, r0
               	mov	r0, r5
               	mov	r2, r4
               	bl	0x3e <param_get_ac_online+0x32> @ imm = #-0x4
               	mov	r0, r5
               	mov	r1, r4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x4a <param_get_ac_online+0x3e> @ imm = #-0x4
