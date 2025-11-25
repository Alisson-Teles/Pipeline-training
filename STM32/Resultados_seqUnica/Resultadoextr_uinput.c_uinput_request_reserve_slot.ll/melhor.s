
/tmp/tmp.MPh4LlAA58/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<uinput_request:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<uinput_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<uinput_request_reserve_slot>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	ldr	r4, [r0]
               	bl	0x1e <uinput_request_reserve_slot+0x6> @ imm = #-0x4
               	mov	r1, r0
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x2a <uinput_request_reserve_slot+0x12> @ imm = #-0x4
