
/tmp/tmp.prFUcyrRra/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_4__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0, #8]
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ax25_std_t3timer_expiry>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	movs	r0, #0x0
               	strd	r0, r0, [r4, #8]
               	mov	r0, r4
               	bl	0x1e <ax25_std_t3timer_expiry+0xe> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	str	r0, [r4]
               	pop	{r4, r6, r7, pc}
