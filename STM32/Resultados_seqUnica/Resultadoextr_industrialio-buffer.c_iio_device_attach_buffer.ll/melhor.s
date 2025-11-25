
/tmp/tmp.ARIidVH9uz/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<iio_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<iio_buffer:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<iio_device_attach_buffer>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	mov	r0, r1
               	bl	0x20 <iio_device_attach_buffer+0x8> @ imm = #-0x4
               	str	r0, [r4]
               	pop	{r4, r6, r7, pc}
