
/tmp/tmp.dcnVUmyUaF/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<controller:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<is_ctrl_busy>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	bl	0x1a <is_ctrl_busy+0xe> @ imm = #-0x4
               	and	r0, r0, #0x1
               	pop	{r7, pc}
