
/tmp/tmp.wEmWUa36Zd/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mt7603_wtbl4_addr>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r4, r0
               	mov	r0, r1
               	bl	0x12 <mt7603_wtbl4_addr+0x12> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	muls	r2, r4, r2
               	adds	r0, r0, r2
               	adc.w	r1, r1, r2, asr #31
               	pop	{r4, r6, r7, pc}
