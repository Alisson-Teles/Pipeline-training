
/tmp/tmp.DFpXLyvNgD/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<r5conf:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<log_write_stripe_run>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	ldrd	r2, r1, [r0]
               	orrs.w	r3, r2, r1
               	beq	0x24 <log_write_stripe_run+0x18> @ imm = #0x8
               	mov	r0, r2
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x20 <log_write_stripe_run+0x14> @ imm = #-0x4
               	mov	r4, r0
               	bl	0x26 <log_write_stripe_run+0x1a> @ imm = #-0x4
               	orrs	r0, r1
               	it	eq
               	popeq	{r4, r6, r7, pc}
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x36 <log_write_stripe_run+0x2a> @ imm = #-0x4
