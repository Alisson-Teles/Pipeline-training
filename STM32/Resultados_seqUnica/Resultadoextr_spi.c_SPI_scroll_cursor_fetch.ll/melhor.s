
/tmp/tmp.BZ2KEaT6EJ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<SPI_scroll_cursor_fetch>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r11}
               	sub	sp, #0x8
               	mov	r6, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r4, r0
               	mov	r0, r1
               	mov	r8, r3
               	mov	r9, r2
               	bl	0x1e <SPI_scroll_cursor_fetch+0x1e> @ imm = #-0x4
               	mov	r5, r0
               	mov	r0, r4
               	mov	r1, r6
               	mov	r2, r9
               	mov	r3, r8
               	str	r5, [sp]
               	bl	0x2e <SPI_scroll_cursor_fetch+0x2e> @ imm = #-0x4
               	add	sp, #0x8
               	pop.w	{r8, r9, r11}
               	pop	{r4, r5, r6, r7, pc}
