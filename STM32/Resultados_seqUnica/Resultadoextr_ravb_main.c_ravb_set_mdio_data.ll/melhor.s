
/tmp/tmp.D2klSeGdYx/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mdiobb_ctrl:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ravb_set_mdio_data>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r2, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	pop.w	{r7, lr}
               	b.w	0x20 <ravb_set_mdio_data+0x14> @ imm = #-0x4
