
/tmp/tmp.pFFZDxQSAm/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<alloc_cb>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r0, r1
               	mov	r4, r2
               	mov	r5, r1
               	bl	0x16 <alloc_cb+0xa>     @ imm = #-0x4
               	strd	r5, r0, [r4]
               	pop	{r4, r5, r7, pc}
