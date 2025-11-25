
/tmp/tmp.BhKo7K4BnQ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<vtblk_softc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<vtblk_stop>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r0, [r0, #0x4]
               	bl	0x14 <vtblk_stop+0x8>   @ imm = #-0x4
               	ldr	r0, [r4]
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x1e <vtblk_stop+0x12>  @ imm = #-0x4
