
/tmp/tmp.gCtwFjfK6V/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<snd_soc_component:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<max98095_jack_detect_disable>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	movs	r2, #0x0
               	mov	r5, r0
               	bl	0x1e <max98095_jack_detect_disable+0x12> @ imm = #-0x4
               	mov	r4, r0
               	cmp	r0, #0x0
               	bmi	0x2c <max98095_jack_detect_disable+0x20> @ imm = #0x2
               	mov	r0, r4
               	pop	{r4, r5, r7, pc}
               	ldr	r0, [r5]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r2, r4
               	movs	r3, #0x1d
               	bl	0x3a <max98095_jack_detect_disable+0x2e> @ imm = #-0x4
               	mov	r0, r4
               	pop	{r4, r5, r7, pc}
