
/tmp/tmp.pwIoNxs5iQ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<al_is_device_supported>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r4, r0
               	bl	0xa <al_is_device_supported+0xa> @ imm = #-0x4
               	mov	r5, r0
               	mov	r0, r4
               	mov	r6, r1
               	bl	0x14 <al_is_device_supported+0x14> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r2, {r2, r3}
               	eors	r3, r6
               	eors	r2, r5
               	orrs	r2, r3
               	bne	0x80 <al_is_device_supported+0x80> @ imm = #0x54
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r2, {r2, r3}
               	eors	r3, r1
               	eors	r2, r0
               	orrs	r2, r3
               	mov.w	r2, #0x1
               	beq	0x82 <al_is_device_supported+0x82> @ imm = #0x40
               	movw	r3, #0x0
               	movt	r3, #0x0
               	ldm	r3, {r3, r6}
               	eors	r6, r1
               	eors	r3, r0
               	orrs	r3, r6
               	itttt	ne
               	movwne	r3, #0x0
               	movtne	r3, #0x0
               	ldmne	r3, {r3, r6}
               	eorne	r3, r0
               	itt	ne
               	eorne	r6, r1
               	orrsne.w	r3, r3, r6
               	beq	0x82 <al_is_device_supported+0x82> @ imm = #0x18
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r2, {r2, r3}
               	eors	r1, r3
               	eors	r0, r2
               	orrs	r0, r1
               	clz	r0, r0
               	lsrs	r2, r0, #0x5
               	b	0x82 <al_is_device_supported+0x82> @ imm = #0x0
               	movs	r2, #0x0
               	mov	r0, r2
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
