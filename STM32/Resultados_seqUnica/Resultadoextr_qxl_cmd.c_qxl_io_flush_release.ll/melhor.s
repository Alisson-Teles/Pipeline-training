
/tmp/tmp.mXoq6GSvgP/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<qxl_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<qxl_io_flush_release>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r0, {r0, r1}
               	ldm	r2, {r2, r3}
               	adds	r2, r2, r0
               	adcs	r3, r1
               	movs	r0, #0x0
               	pop.w	{r7, lr}
               	b.w	0x26 <qxl_io_flush_release+0x1a> @ imm = #-0x4
