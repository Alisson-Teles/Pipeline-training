
/tmp/tmp.EZm4lmrnlz/saida.o:	file format elf32-littlearm

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
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	bl	0x38 <led_set_kb+0x38>  @ imm = #-0x4
               	orrs	r0, r1
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	beq	0x50 <led_set_kb+0x50>  @ imm = #0x4
               	bl	0x4a <led_set_kb+0x4a>  @ imm = #-0x4
               	b	0x54 <led_set_kb+0x54>  @ imm = #0x2
               	bl	0x50 <led_set_kb+0x50>  @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	bl	0x60 <led_set_kb+0x60>  @ imm = #-0x4
               	orrs	r0, r1
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	beq	0x78 <led_set_kb+0x78>  @ imm = #0x4
               	bl	0x72 <led_set_kb+0x72>  @ imm = #-0x4
               	b	0x7c <led_set_kb+0x7c>  @ imm = #0x2
               	bl	0x78 <led_set_kb+0x78>  @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x82 <led_set_kb+0x82>  @ imm = #-0x4
