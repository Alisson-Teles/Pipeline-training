
/tmp/tmp.stiewi1SNm/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<dvb_frontend_tune_settings:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	strd	r1, r1, [r0, #8]
               	strd	r1, r1, [r0, #16]
               	pop	{r7, pc}
               	nop

<dvb_frontend:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<lgdt330x_get_tune_settings>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov.w	r0, #0x1f4
               	str	r0, [r1]
               	movs	r2, #0x0
               	movs	r0, #0x0
               	strd	r2, r2, [r1, #8]
               	str	r2, [r1, #0x10]
               	str	r2, [r1, #0x14]
               	pop	{r7, pc}
