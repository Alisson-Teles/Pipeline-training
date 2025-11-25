
/tmp/tmp.XjjKGHqyQf/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<epub_recognize>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r5, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r5
               	movs	r3, #0x16
               	mov	r4, r2
               	bl	0x14 <epub_recognize+0x14> @ imm = #-0x4
               	orrs	r0, r1
               	itt	ne
               	movne	r0, #0xc8
               	popne	{r4, r5, r7, pc}
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r5
               	mov	r2, r4
               	movs	r3, #0x16
               	bl	0x2e <epub_recognize+0x2e> @ imm = #-0x4
               	orrs	r0, r1
               	it	ne
               	movne	r0, #0xc8
               	pop	{r4, r5, r7, pc}
