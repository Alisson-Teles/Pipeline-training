
/tmp/tmp.VShX4f7nm2/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<timespec64:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<posix_clock_realtime_get>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r0, r1
               	bl	0x12 <posix_clock_realtime_get+0x6> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r7, pc}
