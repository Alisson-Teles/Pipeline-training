
/tmp/tmp.u8SVLJP1JF/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<evbuffer:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<evtag_marshal_int>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	sub	sp, #0x18
               	mov	r4, r0
               	movs	r0, #0x0
               	add.w	r8, sp, #0x4
               	mov	r5, r1
               	str	r0, [sp, #0x14]
               	strd	r0, r0, [sp, #12]
               	strd	r0, r0, [sp, #4]
               	mov	r0, r8
               	mov	r1, r2
               	movs	r2, #0x5
               	bl	0x30 <evtag_marshal_int+0x24> @ imm = #-0x4
               	mov	r6, r0
               	mov	r0, r4
               	mov	r1, r5
               	bl	0x3a <evtag_marshal_int+0x2e> @ imm = #-0x4
               	mov	r0, r4
               	mov	r1, r6
               	bl	0x42 <evtag_marshal_int+0x36> @ imm = #-0x4
               	mov	r0, r4
               	mov	r1, r8
               	mov	r2, r6
               	movs	r3, #0x5
               	bl	0x4e <evtag_marshal_int+0x42> @ imm = #-0x4
               	add	sp, #0x18
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
