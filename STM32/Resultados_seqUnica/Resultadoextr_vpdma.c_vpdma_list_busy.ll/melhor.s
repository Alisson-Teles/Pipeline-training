
/tmp/tmp.qOc1O3WMI0/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<vpdma_data:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<vpdma_list_busy>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	bl	0x1c <vpdma_list_busy+0x10> @ imm = #-0x4
               	mov	r5, r0
               	add.w	r0, r4, #0x10
               	bl	0x26 <vpdma_list_busy+0x1a> @ imm = #-0x4
               	ands	r0, r5
               	pop	{r4, r5, r7, pc}
