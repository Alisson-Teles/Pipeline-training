
/tmp/tmp.EOQrIthSbg/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<savagefb_par:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<savage3D_waitidle>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	movw	r5, #0x8c00
               	movw	r6, #0xffff
               	mov	r4, r0
               	movt	r5, #0x4
               	movt	r6, #0x8
               	nop
               	mov	r0, r5
               	mov	r1, r4
               	bl	0x2c <savage3D_waitidle+0x20> @ imm = #-0x4
               	ands	r0, r6
               	cmp.w	r0, #0x80000
               	bne	0x28 <savage3D_waitidle+0x1c> @ imm = #-0x12
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
