
/tmp/tmp.ggqi7zTNX0/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<snd_als300:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<snd_als300_free>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r4, r0
               	bl	0x20 <snd_als300_free+0x10> @ imm = #-0x4
               	ldr	r1, [r4, #0x4]
               	cmp	r1, #0x0
               	bmi	0x32 <snd_als300_free+0x22> @ imm = #0x6
               	ldr	r0, [r4]
               	mov	r2, r4
               	bl	0x2e <snd_als300_free+0x1e> @ imm = #-0x4
               	ldr	r0, [r4, #0x8]
               	bl	0x34 <snd_als300_free+0x24> @ imm = #-0x4
               	ldr	r0, [r4, #0x8]
               	bl	0x3a <snd_als300_free+0x2a> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x40 <snd_als300_free+0x30> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r4, r6, r7, pc}
