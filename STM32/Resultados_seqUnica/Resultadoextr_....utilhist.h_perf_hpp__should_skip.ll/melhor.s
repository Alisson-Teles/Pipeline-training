
/tmp/tmp.Am2uqjOl3g/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<perf_hpp_fmt:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<hists:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<perf_hpp__should_skip>:
               	ldrd	r2, r3, [r0]
               	orrs	r2, r3
               	itt	ne
               	movne	r0, #0x1
               	bxne	lr
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	mov	r5, r0
               	bl	0x2c <perf_hpp__should_skip+0x14> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x3e <perf_hpp__should_skip+0x26> @ imm = #0x8
               	mov	r0, r5
               	mov	r1, r4
               	bl	0x38 <perf_hpp__should_skip+0x20> @ imm = #-0x4
               	cbz	r0, 0x42 <perf_hpp__should_skip+0x2a> @ imm = #0x2
               	movs	r0, #0x0
               	pop	{r4, r5, r7, pc}
               	movs	r0, #0x1
               	pop	{r4, r5, r7, pc}
