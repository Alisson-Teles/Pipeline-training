
/tmp/tmp.HD7K9glgeX/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<gsm_mux:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<gsm_control:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<gsm_control_wait>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	ldr	r1, [r1]
               	ldr	r0, [r0]
               	subs	r1, #0x1
               	clz	r1, r1
               	lsrs	r1, r1, #0x5
               	bl	0x2a <gsm_control_wait+0x12> @ imm = #-0x4
               	ldr	r5, [r4, #0x4]
               	mov	r0, r4
               	bl	0x32 <gsm_control_wait+0x1a> @ imm = #-0x4
               	mov	r0, r5
               	pop	{r4, r5, r7, pc}
