
/tmp/tmp.8SPCXYtbfw/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<eap_aka_data:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<eap_aka_state>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	sub	sp, #0x8
               	mov	r4, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr.w	r8, [r0]
               	ldr	r0, [r4]
               	mov	r6, r1
               	bl	0x28 <eap_aka_state+0x1c> @ imm = #-0x4
               	mov	r5, r0
               	mov	r0, r6
               	bl	0x30 <eap_aka_state+0x24> @ imm = #-0x4
               	movw	r1, #0x0
               	mov	r3, r0
               	mov.w	r12, #0x11
               	movt	r1, #0x0
               	mov	r0, r8
               	mov	r2, r5
               	str.w	r12, [sp]
               	bl	0x4a <eap_aka_state+0x3e> @ imm = #-0x4
               	str	r6, [r4]
               	add	sp, #0x8
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
