
/tmp/tmp.z2oLmVsrK0/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<efx_nic:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<efx_ef10_vlan_rx_kill_vid>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	ldr.w	r8, [r7, #0x8]
               	mov	r5, r0
               	mov	r0, r1
               	mov	r6, r3
               	mov	r4, r2
               	bl	0x2a <efx_ef10_vlan_rx_kill_vid+0x1e> @ imm = #-0x4
               	eors	r1, r6
               	eors	r0, r4
               	orrs	r0, r1
               	bne	0x46 <efx_ef10_vlan_rx_kill_vid+0x3a> @ imm = #0xe
               	mov	r0, r5
               	mov	r1, r8
               	ldr	r8, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x42 <efx_ef10_vlan_rx_kill_vid+0x36> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	rsbs	r0, r0, #0
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
