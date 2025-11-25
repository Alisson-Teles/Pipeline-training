
/tmp/tmp.A9ixRTQFW4/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<sk_buff:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<llc_station_rcv>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <llc_station_rcv+0x6> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x22 <llc_station_rcv+0x16> @ imm = #0x6
               	mov	r0, r4
               	bl	0x1c <llc_station_rcv+0x10> @ imm = #-0x4
               	b	0x32 <llc_station_rcv+0x26> @ imm = #0xe
               	mov	r0, r4
               	bl	0x24 <llc_station_rcv+0x18> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x32 <llc_station_rcv+0x26> @ imm = #0x4
               	mov	r0, r4
               	bl	0x2e <llc_station_rcv+0x22> @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x38 <llc_station_rcv+0x2c> @ imm = #-0x4
