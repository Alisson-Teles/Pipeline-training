
/tmp/tmp.8TZQcpdKcO/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<xgene_enet_pdata:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<xgene_enet_config_ring_if_assoc>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov.w	r2, #0xffffffff
               	mov	r4, r0
               	bl	0x20 <xgene_enet_config_ring_if_assoc+0x14> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	mov.w	r2, #0xffffffff
               	bl	0x34 <xgene_enet_config_ring_if_assoc+0x28> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	mov.w	r2, #0xffffffff
               	bl	0x48 <xgene_enet_config_ring_if_assoc+0x3c> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	mov.w	r2, #0xffffffff
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x60 <xgene_enet_config_ring_if_assoc+0x54> @ imm = #-0x4
