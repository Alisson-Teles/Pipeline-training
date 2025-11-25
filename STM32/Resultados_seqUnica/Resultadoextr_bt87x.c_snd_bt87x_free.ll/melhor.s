
/tmp/tmp.0z0Ln0WMeb/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<snd_bt87x:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0, #16]
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<snd_bt87x_free>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r1, [r0, #0x14]
               	ldr	r0, [r0, #0x10]
               	orrs	r0, r1
               	beq	0x28 <snd_bt87x_free+0x14> @ imm = #0x4
               	mov	r0, r4
               	bl	0x24 <snd_bt87x_free+0x10> @ imm = #-0x4
               	ldr	r1, [r4, #0x4]
               	cmp	r1, #0x0
               	bmi	0x36 <snd_bt87x_free+0x22> @ imm = #0x6
               	ldr	r0, [r4]
               	mov	r2, r4
               	bl	0x32 <snd_bt87x_free+0x1e> @ imm = #-0x4
               	ldrd	r0, r1, [r4, #16]
               	bl	0x3a <snd_bt87x_free+0x26> @ imm = #-0x4
               	ldr	r0, [r4, #0x8]
               	bl	0x40 <snd_bt87x_free+0x2c> @ imm = #-0x4
               	ldr	r0, [r4, #0x8]
               	bl	0x46 <snd_bt87x_free+0x32> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x4c <snd_bt87x_free+0x38> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r4, r6, r7, pc}
