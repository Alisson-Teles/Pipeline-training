
/tmp/tmp.tkzUMg5NWs/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<switchdev_obj_port_vlan:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<net_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ocelot_port_vlan_del_vlan>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	mov	r4, r1
               	ldrd	r5, r6, [r1]
               	ldr	r1, [r1, #0x8]
               	ldr	r2, [r4, #0xc]
               	subs	r1, r1, r5
               	sbcs.w	r1, r2, r6
               	blt	0x56 <ocelot_port_vlan_del_vlan+0x3a> @ imm = #0x1e
               	mov	r8, r0
               	mov	r0, r8
               	mov	r2, r5
               	mov	r3, r6
               	bl	0x3e <ocelot_port_vlan_del_vlan+0x22> @ imm = #-0x4
               	cbnz	r0, 0x58 <ocelot_port_vlan_del_vlan+0x3c> @ imm = #0x12
               	ldrd	r0, r1, [r4, #8]
               	adds	r5, #0x1
               	adc	r6, r6, #0x0
               	subs	r0, r0, r5
               	sbcs.w	r0, r1, r6
               	bge	0x38 <ocelot_port_vlan_del_vlan+0x1c> @ imm = #-0x20
               	movs	r0, #0x0
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
