
/tmp/tmp.GskN1quRoJ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<adm6996_priv:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<adm6996_enable_vlan_6996l>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldr	r1, [r5]
               	mov	r4, r0
               	bl	0x1c <adm6996_enable_vlan_6996l+0x10> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movw	r2, #0x0
               	ldr	r1, [r1]
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	orrs	r0, r1
               	ldr	r1, [r5]
               	orrs	r2, r0
               	mov	r0, r4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x40 <adm6996_enable_vlan_6996l+0x34> @ imm = #-0x4
