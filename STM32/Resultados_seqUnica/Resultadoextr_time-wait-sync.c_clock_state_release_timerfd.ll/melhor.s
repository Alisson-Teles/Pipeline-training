
/tmp/tmp.pQuZvl1qJa/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<clock_state_release_timerfd>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r0, [r0, #0x4]
               	bl	0x14 <clock_state_release_timerfd+0x8> @ imm = #-0x4
               	ldr	r1, [r4]
               	str	r0, [r4, #0x4]
               	mov	r0, r1
               	bl	0x1e <clock_state_release_timerfd+0x12> @ imm = #-0x4
               	str	r0, [r4]
               	pop	{r4, r6, r7, pc}
