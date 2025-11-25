
/tmp/tmp.Qaa6SOg85v/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_4__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<sqlite3BtreeEnterAll>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldrd	r1, r2, [r0]
               	orrs	r1, r2
               	it	ne
               	popne	{r7, pc}
               	pop.w	{r7, lr}
               	b.w	0x1e <sqlite3BtreeEnterAll+0x12> @ imm = #-0x4
