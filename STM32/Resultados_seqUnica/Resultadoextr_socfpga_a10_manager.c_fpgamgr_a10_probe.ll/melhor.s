
/tmp/tmp.wC0KpxSvpx/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<fpgamgr_a10_probe>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x6 <fpgamgr_a10_probe+0x6> @ imm = #-0x4
               	cbz	r0, 0x3a <fpgamgr_a10_probe+0x3a> @ imm = #0x2c
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r4
               	movs	r2, #0x19
               	bl	0x18 <fpgamgr_a10_probe+0x18> @ imm = #-0x4
               	cbz	r0, 0x3a <fpgamgr_a10_probe+0x3a> @ imm = #0x1a
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r4
               	movs	r2, #0x15
               	bl	0x2a <fpgamgr_a10_probe+0x2a> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop	{r4, r6, r7, pc}
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop	{r4, r6, r7, pc}
