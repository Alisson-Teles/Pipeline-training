
/tmp/tmp.X8ZtA0Il4D/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<pmbus_sensor:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<pmbus_data:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<pmbus_data2reg_vid>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r1, r3
               	mov	r0, r2
               	mov.w	r2, #0x1f4
               	mov.w	r3, #0x640
               	bl	0x28 <pmbus_data2reg_vid+0x10> @ imm = #-0x4
               	rsb.w	r0, r0, #0x640
               	movs	r1, #0x64
               	muls	r0, r1, r0
               	movw	r1, #0x271
               	bl	0x38 <pmbus_data2reg_vid+0x20> @ imm = #-0x4
               	adds	r0, #0x2
               	adc	r1, r1, #0x0
               	pop	{r7, pc}
