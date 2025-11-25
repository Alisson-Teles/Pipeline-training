
/tmp/tmp.88oZR9G6Ja/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<bufferevent_openssl:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<set_rbow>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r0, [r0, #0x4]
               	cbnz	r0, 0x1c <set_rbow+0x10> @ imm = #0x4
               	mov	r0, r4
               	bl	0x18 <set_rbow+0xc>     @ imm = #-0x4
               	movs	r1, #0x1
               	mov	r0, r4
               	str	r1, [r4]
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x26 <set_rbow+0x1a>    @ imm = #-0x4
