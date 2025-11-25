
/tmp/tmp.U2PcTEu91j/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<input_file:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<release_input>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldm	r0, {r0, r1}
               	bl	0x18 <release_input+0x8> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x32 <release_input+0x22> @ imm = #0x10
               	ldr	r2, [r4, #0xc]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movs	r0, #0x1
               	movs	r3, #0x1c
               	bl	0x2e <release_input+0x1e> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldrd	r0, r1, [r4]
               	ldm	r2, {r2, r3}
               	eors	r3, r1
               	eors	r2, r0
               	orrs	r2, r3
               	it	ne
               	blne	0x48 <release_input+0x38> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	str	r0, [r4, #0x8]
               	pop	{r4, r6, r7, pc}
