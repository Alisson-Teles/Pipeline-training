
/tmp/tmp.IltYUB7SFV/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<led_set_kb>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r4, r0
               	bl	0x10 <led_set_kb+0x10>  @ imm = #-0x4
               	orrs	r0, r1
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	beq	0x28 <led_set_kb+0x28>  @ imm = #0x4
               	bl	0x22 <led_set_kb+0x22>  @ imm = #-0x4
               	b	0x2c <led_set_kb+0x2c>  @ imm = #0x2
               	bl	0x28 <led_set_kb+0x28>  @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x32 <led_set_kb+0x32>  @ imm = #-0x4
