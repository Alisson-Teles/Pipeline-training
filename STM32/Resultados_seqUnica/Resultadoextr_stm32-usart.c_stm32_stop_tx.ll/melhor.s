
/tmp/tmp.L8KT766ZqB/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<uart_port:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<stm32_stop_tx>:
               	push	{r7, lr}
               	mov	r7, sp
               	pop.w	{r7, lr}
               	b.w	0x14 <stm32_stop_tx+0x8> @ imm = #-0x4
