
/tmp/tmp.eDjRzfSqut/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<cpt_mbox:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<cpt_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<cpt_send_msg_to_vf>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	mov	r4, r2
               	mov	r5, r0
               	ldr.w	r8, [r0]
               	movs	r0, #0x0
               	movs	r2, #0x1
               	mov	r6, r1
               	bl	0x2e <cpt_send_msg_to_vf+0x16> @ imm = #-0x4
               	ldr	r2, [r4, #0x4]
               	mov	r1, r0
               	mov	r0, r8
               	bl	0x38 <cpt_send_msg_to_vf+0x20> @ imm = #-0x4
               	ldr	r5, [r5]
               	movs	r0, #0x0
               	mov	r1, r6
               	movs	r2, #0x0
               	bl	0x44 <cpt_send_msg_to_vf+0x2c> @ imm = #-0x4
               	ldr	r2, [r4]
               	mov	r1, r0
               	mov	r0, r5
               	ldr	r8, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x56 <cpt_send_msg_to_vf+0x3e> @ imm = #-0x4
