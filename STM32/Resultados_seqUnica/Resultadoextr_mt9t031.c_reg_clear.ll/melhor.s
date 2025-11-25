
/tmp/tmp.XkGWOa5cBG/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<i2c_client:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<reg_clear>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r5, r2
               	mov	r4, r1
               	mov	r6, r0
               	bl	0x1a <reg_clear+0xe>    @ imm = #-0x4
               	cmp.w	r0, #0xffffffff
               	ble	0x38 <reg_clear+0x2c>   @ imm = #0x12
               	bic.w	r2, r0, r5
               	mov	r0, r6
               	mov	r1, r4
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x34 <reg_clear+0x28>   @ imm = #-0x4
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
