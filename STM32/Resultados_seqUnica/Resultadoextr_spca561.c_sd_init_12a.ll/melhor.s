
/tmp/tmp.Q8qlcngQGZ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<gspca_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<sd_init_12a>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	movw	r2, #0x0
               	movt	r2, #0x0
               	movs	r3, #0x14
               	mov	r4, r0
               	bl	0x26 <sd_init_12a+0x1a> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x2c <sd_init_12a+0x20> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r4, r6, r7, pc}
