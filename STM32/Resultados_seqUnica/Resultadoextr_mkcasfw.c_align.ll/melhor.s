
/tmp/tmp.RqaAkBhLZj/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<align>:
               	push	{r7, lr}
               	mov	r7, sp
               	adds	r2, r0, r1
               	subs	r2, #0x1
               	rsbs	r3, r1, #0
               	cmp	r1, #0x0
               	it	ne
               	andne.w	r0, r2, r3
               	pop	{r7, pc}
