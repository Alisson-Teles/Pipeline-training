
/tmp/tmp.vivKKMtVMY/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<task_struct:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<thaw_process>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <thaw_process+0x6> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x18 <thaw_process+0xc> @ imm = #-0x4
               	mov	r5, r0
               	mov	r0, r4
               	bl	0x20 <thaw_process+0x14> @ imm = #-0x4
               	cmp	r5, #0x1
               	itt	ne
               	movne	r0, #0x0
               	popne	{r4, r5, r7, pc}
               	mov	r0, r4
               	bl	0x2e <thaw_process+0x22> @ imm = #-0x4
               	movs	r0, #0x1
               	pop	{r4, r5, r7, pc}
