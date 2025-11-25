
/tmp/tmp.OzczkSl2aX/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<aq_hw_s:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<hw_atl_tps_tx_pkt_shed_tc_data_weight_set>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x8
               	mov	r5, r0
               	mov	r0, r2
               	mov	r4, r1
               	bl	0x18 <hw_atl_tps_tx_pkt_shed_tc_data_weight_set+0xc> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r2, [r1]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r3, [r1]
               	mov	r1, r0
               	mov	r0, r5
               	str	r4, [sp]
               	bl	0x36 <hw_atl_tps_tx_pkt_shed_tc_data_weight_set+0x2a> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r4, r5, r7, pc}
