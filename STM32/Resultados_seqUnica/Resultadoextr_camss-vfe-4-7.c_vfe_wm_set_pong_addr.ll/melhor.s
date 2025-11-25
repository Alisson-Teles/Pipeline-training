
/tmp/tmp.jKoosZVhdx/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<vfe_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<vfe_wm_set_pong_addr>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	ldrd	r5, r6, [r0]
               	mov	r0, r1
               	mov	r4, r2
               	bl	0x1c <vfe_wm_set_pong_addr+0x10> @ imm = #-0x4
               	adds	r2, r0, r5
               	adc.w	r3, r1, r6
               	mov	r0, r4
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x30 <vfe_wm_set_pong_addr+0x24> @ imm = #-0x4
