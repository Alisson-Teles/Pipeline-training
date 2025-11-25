
/tmp/tmp.jp9gRnhdew/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<page:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<kvm_release_page_dirty>:
               	push	{r7, lr}
               	mov	r7, sp
               	bl	0x10 <kvm_release_page_dirty+0x4> @ imm = #-0x4
               	pop.w	{r7, lr}
               	b.w	0x18 <kvm_release_page_dirty+0xc> @ imm = #-0x4
