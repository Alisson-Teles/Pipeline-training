
/tmp/tmp.0a6W8UDBvR/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<kobject:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<attribute:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<fw_cfg_showrev>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr.w	r12, [r0]
               	movw	r1, #0x0
               	mov	r0, r2
               	mov.w	lr, #0x3
               	movt	r1, #0x0
               	mov	r2, r12
               	str.w	lr, [sp]
               	bl	0x3e <fw_cfg_showrev+0x26> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
