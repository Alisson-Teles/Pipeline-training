
/tmp/tmp.qFVVnAXOtd/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<rtc_time:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<puv3_rtc_gettime>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r5, r0
               	mov	r0, r1
               	bl	0x2c <puv3_rtc_gettime+0x14> @ imm = #-0x4
               	mov	r1, r4
               	bl	0x32 <puv3_rtc_gettime+0x1a> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r0, r5
               	mov	r2, r4
               	movs	r3, #0x10
               	bl	0x44 <puv3_rtc_gettime+0x2c> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r4, r5, r7, pc}
