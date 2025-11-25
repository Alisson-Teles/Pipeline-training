
/tmp/tmp.NBXYxxNtLF/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<NewHttpHeader>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x10
               	ldrd	r12, lr, [r7, #8]
               	strd	r3, r12, [sp]
               	movs	r3, #0x0
               	str.w	lr, [sp, #0x8]
               	bl	0x14 <NewHttpHeader+0x14> @ imm = #-0x4
               	add	sp, #0x10
               	pop	{r7, pc}
