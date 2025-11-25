
/tmp/tmp.0ezYo3Xj4x/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ucom_softc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<uftdi_cfg_open>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movs	r1, #0x1
               	pop.w	{r7, lr}
               	b.w	0x1e <uftdi_cfg_open+0x12> @ imm = #-0x4
