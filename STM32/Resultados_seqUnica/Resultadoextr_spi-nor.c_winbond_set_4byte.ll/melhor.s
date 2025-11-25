
/tmp/tmp.OhLNC8EunI/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<spi_nor:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<winbond_set_4byte>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r5, r1
               	mov	r4, r0
               	bl	0x14 <winbond_set_4byte+0x8> @ imm = #-0x4
               	orrs.w	r1, r0, r5
               	it	ne
               	popne	{r4, r5, r7, pc}
               	mov	r0, r4
               	bl	0x22 <winbond_set_4byte+0x16> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x0
               	bl	0x2a <winbond_set_4byte+0x1e> @ imm = #-0x4
               	mov	r5, r0
               	mov	r0, r4
               	bl	0x32 <winbond_set_4byte+0x26> @ imm = #-0x4
               	mov	r0, r5
               	pop	{r4, r5, r7, pc}
