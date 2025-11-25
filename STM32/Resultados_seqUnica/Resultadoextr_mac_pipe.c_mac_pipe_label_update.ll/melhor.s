
/tmp/tmp.6kqjITvbdn/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<pipe:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<label:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mac_pipe_label_update>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	sub	sp, #0x8
               	mov	r4, r2
               	mov	r5, r1
               	mov	r6, r0
               	bl	0x28 <mac_pipe_label_update+0x10> @ imm = #-0x4
               	cbnz	r0, 0x46 <mac_pipe_label_update+0x2e> @ imm = #0x16
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	ldr	r3, [r5]
               	mov	r1, r6
               	mov	r2, r5
               	str	r4, [sp]
               	bl	0x40 <mac_pipe_label_update+0x28> @ imm = #-0x4
               	movs	r0, #0x0
               	add	sp, #0x8
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
