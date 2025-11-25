
/tmp/tmp.IXvzth0Bku/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<corgi_lcd:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<lcdtg_set_common_voltage>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r6, r2
               	mov	r4, r1
               	mov	r5, r0
               	bl	0x1a <lcdtg_set_common_voltage+0xe> @ imm = #-0x4
               	mov	r0, r5
               	mov	r1, r4
               	movs	r2, #0x9c
               	bl	0x24 <lcdtg_set_common_voltage+0x18> @ imm = #-0x4
               	mov	r0, r5
               	mov	r1, r4
               	bl	0x2c <lcdtg_set_common_voltage+0x20> @ imm = #-0x4
               	mov	r0, r5
               	mov	r1, r4
               	movs	r2, #0x0
               	bl	0x36 <lcdtg_set_common_voltage+0x2a> @ imm = #-0x4
               	mov	r0, r5
               	mov	r1, r4
               	bl	0x3e <lcdtg_set_common_voltage+0x32> @ imm = #-0x4
               	mov	r0, r5
               	mov	r1, r4
               	mov	r2, r6
               	bl	0x48 <lcdtg_set_common_voltage+0x3c> @ imm = #-0x4
               	mov	r0, r5
               	mov	r1, r4
               	bl	0x50 <lcdtg_set_common_voltage+0x44> @ imm = #-0x4
               	mov	r0, r5
               	mov	r1, r4
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x60 <lcdtg_set_common_voltage+0x54> @ imm = #-0x4
