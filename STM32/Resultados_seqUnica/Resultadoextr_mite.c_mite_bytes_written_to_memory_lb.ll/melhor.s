
/tmp/tmp.s5mE5B8NaN/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mite_channel:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mite_bytes_written_to_memory_lb>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r4, r0
               	bl	0x16 <mite_bytes_written_to_memory_lb+0xa> @ imm = #-0x4
               	mov	r5, r0
               	mov	r0, r4
               	mov	r6, r1
               	bl	0x20 <mite_bytes_written_to_memory_lb+0x14> @ imm = #-0x4
               	subs	r0, r5, r0
               	sbc.w	r1, r6, r1
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
