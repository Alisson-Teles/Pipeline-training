
/tmp/tmp.ZCpeSAft8z/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<cphy:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<led_init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	movw	r2, #0x8304
               	movw	r3, #0xdddd
               	bl	0x22 <led_init+0x16>    @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r7, pc}
