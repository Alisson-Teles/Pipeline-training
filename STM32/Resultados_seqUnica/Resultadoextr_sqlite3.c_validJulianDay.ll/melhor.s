
/tmp/tmp.PcDMZFrDTI/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<validJulianDay>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm.w	r2, {r2, lr}
               	cmp.w	r1, #0xffffffff
               	mov.w	r3, #0x0
               	it	gt
               	movgt	r3, #0x1
               	subs	r0, r2, r0
               	mov.w	r12, #0x0
               	sbcs.w	r0, lr, r1
               	it	ge
               	movge.w	r12, #0x1
               	and.w	r0, r3, r12
               	pop	{r7, pc}
