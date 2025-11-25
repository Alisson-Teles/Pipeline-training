
/tmp/tmp.QIalI2Bmai/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<snd_kcontrol_new:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<dg_control_filter>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movs	r2, #0x10
               	movs	r3, #0x10
               	bl	0x1e <dg_control_filter+0x12> @ imm = #-0x4
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	pop	{r7, pc}
