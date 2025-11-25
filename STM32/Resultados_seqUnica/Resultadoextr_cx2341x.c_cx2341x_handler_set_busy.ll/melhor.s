
/tmp/tmp.sO6FqU4ScW/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<cx2341x_handler:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x24
               	bl	0x6 <cx2341x_handler:init+0x6> @ imm = #-0x4
               	pop	{r7, pc}

<cx2341x_handler_set_busy>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r0, [r0, #0x20]
               	mov	r5, r1
               	bl	0x16 <cx2341x_handler_set_busy+0xa> @ imm = #-0x4
               	ldr	r0, [r4, #0x1c]
               	mov	r1, r5
               	bl	0x1e <cx2341x_handler_set_busy+0x12> @ imm = #-0x4
               	ldr	r0, [r4, #0x18]
               	mov	r1, r5
               	bl	0x26 <cx2341x_handler_set_busy+0x1a> @ imm = #-0x4
               	ldr	r0, [r4, #0x14]
               	mov	r1, r5
               	bl	0x2e <cx2341x_handler_set_busy+0x22> @ imm = #-0x4
               	ldr	r0, [r4, #0x10]
               	mov	r1, r5
               	bl	0x36 <cx2341x_handler_set_busy+0x2a> @ imm = #-0x4
               	ldr	r0, [r4, #0xc]
               	mov	r1, r5
               	bl	0x3e <cx2341x_handler_set_busy+0x32> @ imm = #-0x4
               	ldr	r0, [r4, #0x8]
               	mov	r1, r5
               	bl	0x46 <cx2341x_handler_set_busy+0x3a> @ imm = #-0x4
               	ldr	r0, [r4, #0x4]
               	mov	r1, r5
               	bl	0x4e <cx2341x_handler_set_busy+0x42> @ imm = #-0x4
               	ldr	r0, [r4]
               	mov	r1, r5
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x5a <cx2341x_handler_set_busy+0x4e> @ imm = #-0x4
