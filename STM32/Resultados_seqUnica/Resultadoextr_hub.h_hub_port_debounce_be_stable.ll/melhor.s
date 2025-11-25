
/tmp/tmp.b724AqxYQs/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<usb_hub:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<hub_port_debounce_be_stable>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r2, #0x0
               	pop.w	{r7, lr}
               	b.w	0x16 <hub_port_debounce_be_stable+0xa> @ imm = #-0x4
