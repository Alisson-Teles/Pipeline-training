
/tmp/tmp.J2nOrgQAfU/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<gspca_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mi1320_init_post_alt>:
               	push	{r7, lr}
               	mov	r7, sp
               	bl	0x10 <mi1320_init_post_alt+0x4> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r7, pc}
