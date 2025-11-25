
/tmp/tmp.lepabpNDMg/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<readadv>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	movw	r1, #0x0
               	movw	r5, #0x0
               	movt	r1, #0x0
               	movt	r5, #0x0
               	ldr	r1, [r1]
               	ldr	r2, [r5]
               	mov	r4, r0
               	subs	r0, r1, r2
               	cmp	r4, r0
               	mov.w	r0, #0x0
               	it	ls
               	movls	r0, #0x1
               	bl	0x2a <readadv+0x2a>     @ imm = #-0x4
               	movw	r6, #0x0
               	movt	r6, #0x0
               	ldr	r0, [r5]
               	ldr	r2, [r6]
               	mov	r1, r4
               	bl	0x3c <readadv+0x3c>     @ imm = #-0x4
               	ldr	r1, [r5]
               	str	r0, [r6]
               	adds	r0, r1, r4
               	str	r0, [r5]
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
