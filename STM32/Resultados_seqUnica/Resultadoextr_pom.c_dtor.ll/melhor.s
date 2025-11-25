
/tmp/tmp.JhQBLXAJfK/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<dtor>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r2, {r2, r3}
               	bl	0xe <dtor+0xe>          @ imm = #-0x4
               	movw	r3, #0x8000
               	movt	r3, #0x4066
               	movs	r2, #0x0
               	bl	0x1c <dtor+0x1c>        @ imm = #-0x4
               	pop	{r7, pc}
