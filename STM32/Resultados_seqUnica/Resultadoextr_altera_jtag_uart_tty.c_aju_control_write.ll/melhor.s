
/tmp/tmp.dw8XTz68yE/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<altera_jtag_uart_softc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<aju_control_write>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	ldr	r4, [r0]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r5, [r0]
               	mov	r0, r1
               	bl	0x1e <aju_control_write+0x12> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	mov	r1, r5
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x2c <aju_control_write+0x20> @ imm = #-0x4
