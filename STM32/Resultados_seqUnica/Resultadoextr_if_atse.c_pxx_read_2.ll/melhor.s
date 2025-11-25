
/tmp/tmp.rEDXzbmuex/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<atse_softc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<pxx_read_2>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r10, r11}
               	sub	sp, #0x24
               	add	r1, r2
               	ldr	r0, [r0]
               	lsls	r6, r1, #0x2
               	ldrd	r9, r11, [r7, #12]
               	ldr.w	r8, [r7, #0x14]
               	mov	r1, r6
               	mov	r10, r3
               	mov	r5, r2
               	bl	0x2a <pxx_read_2+0x1e>  @ imm = #-0x4
               	bl	0x2e <pxx_read_2+0x22>  @ imm = #-0x4
               	uxth	r4, r0
               	movs	r0, #0x2a
               	movw	r1, #0x0
               	movt	r1, #0x0
               	strd	r4, r0, [sp, #12]
               	movw	r0, #0x0
               	ldr	r2, [r7, #0x8]
               	mov.w	r12, #0xc
               	stm.w	sp, {r1, r5, r6}
               	movt	r0, #0x0
               	mov	r1, r10
               	mov	r3, r9
               	strd	r11, r8, [sp, #20]
               	str.w	r12, [sp, #0x1c]
               	bl	0x60 <pxx_read_2+0x54>  @ imm = #-0x4
               	mov	r0, r4
               	add	sp, #0x24
               	pop.w	{r8, r9, r10, r11}
               	pop	{r4, r5, r6, r7, pc}
