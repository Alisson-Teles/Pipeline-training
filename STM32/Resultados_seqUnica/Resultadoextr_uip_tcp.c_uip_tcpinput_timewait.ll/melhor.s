
/tmp/tmp.OcAI3ikWwD/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<uip_tcp_pcb:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<uip_tcpinput_timewait>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r11}
               	movw	r8, #0x0
               	movw	r9, #0x0
               	movt	r8, #0x0
               	movt	r9, #0x0
               	ldrd	r1, r6, [r8]
               	ldrd	r2, r5, [r9]
               	mov	r4, r0
               	adds	r0, r2, r1
               	ldrd	r2, r3, [r4]
               	adc.w	r1, r5, r6
               	bl	0x38 <uip_tcpinput_timewait+0x2c> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x50 <uip_tcpinput_timewait+0x44> @ imm = #0xe
               	ldrd	r0, r1, [r8]
               	ldrd	r2, r3, [r9]
               	adds	r0, r0, r2
               	adcs	r1, r3
               	strd	r0, r1, [r4]
               	ldrd	r0, r1, [r9]
               	subs	r0, #0x1
               	sbcs	r0, r1, #0x0
               	blt	0x62 <uip_tcpinput_timewait+0x56> @ imm = #0x4
               	mov	r0, r4
               	bl	0x5e <uip_tcpinput_timewait+0x52> @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r8, r9, r11}
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x6c <uip_tcpinput_timewait+0x60> @ imm = #-0x4
