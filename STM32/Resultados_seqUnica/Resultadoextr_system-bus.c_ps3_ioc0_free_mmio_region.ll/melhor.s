
/tmp/tmp.QZfIRj3UVH/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ps3_mmio_region:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ps3_ioc0_free_mmio_region>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r0, #0x0
               	pop	{r7, pc}
