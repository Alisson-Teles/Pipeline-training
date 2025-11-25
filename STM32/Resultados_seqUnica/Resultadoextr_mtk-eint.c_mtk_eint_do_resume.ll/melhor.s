
/tmp/tmp.kBvRlTh9Fa/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mtk_eint:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<mtk_eint_do_resume>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldrd	r2, r1, [r0]
               	bl	0x14 <mtk_eint_do_resume+0x8> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r7, pc}
