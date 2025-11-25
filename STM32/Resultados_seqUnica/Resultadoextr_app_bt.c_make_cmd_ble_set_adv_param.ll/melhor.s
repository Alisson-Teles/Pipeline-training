
/tmp/tmp.bCRwIHcC2o/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<make_cmd_ble_set_adv_param>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r10, r11}
               	sub	sp, #0x4
               	mov	r4, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	mov	r6, r3
               	mov	r10, r2
               	ldrd	r2, r3, [r1]
               	ldrd	r11, r8, [r7, #8]
               	mov	r1, r4
               	mov	r5, r0
               	bl	0x24 <make_cmd_ble_set_adv_param+0x24> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldrd	r2, r3, [r0]
               	mov	r0, r5
               	mov	r1, r4
               	bl	0x38 <make_cmd_ble_set_adv_param+0x38> @ imm = #-0x4
               	movw	r9, #0x0
               	movt	r9, #0x0
               	ldrd	r2, r3, [r9]
               	mov	r0, r5
               	mov	r1, r4
               	bl	0x4c <make_cmd_ble_set_adv_param+0x4c> @ imm = #-0x4
               	mov	r0, r5
               	mov	r1, r4
               	mov	r2, r10
               	mov	r3, r6
               	bl	0x58 <make_cmd_ble_set_adv_param+0x58> @ imm = #-0x4
               	mov	r0, r5
               	mov	r1, r4
               	mov	r2, r11
               	mov	r3, r8
               	bl	0x64 <make_cmd_ble_set_adv_param+0x64> @ imm = #-0x4
               	ldrd	r2, r3, [r7, #16]
               	mov	r0, r5
               	mov	r1, r4
               	bl	0x70 <make_cmd_ble_set_adv_param+0x70> @ imm = #-0x4
               	ldrd	r2, r3, [r7, #24]
               	mov	r0, r5
               	mov	r1, r4
               	bl	0x7c <make_cmd_ble_set_adv_param+0x7c> @ imm = #-0x4
               	ldrd	r2, r3, [r7, #32]
               	mov	r0, r5
               	mov	r1, r4
               	bl	0x88 <make_cmd_ble_set_adv_param+0x88> @ imm = #-0x4
               	ldr	r2, [r7, #0x28]
               	mov	r0, r5
               	mov	r1, r4
               	bl	0x92 <make_cmd_ble_set_adv_param+0x92> @ imm = #-0x4
               	ldrd	r2, r3, [r7, #48]
               	mov	r0, r5
               	mov	r1, r4
               	bl	0x9e <make_cmd_ble_set_adv_param+0x9e> @ imm = #-0x4
               	ldrd	r2, r3, [r7, #56]
               	mov	r0, r5
               	mov	r1, r4
               	bl	0xaa <make_cmd_ble_set_adv_param+0xaa> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldm	r0, {r0, r1}
               	ldrd	r2, r3, [r9]
               	adds	r0, r0, r2
               	adcs	r1, r3
               	add	sp, #0x4
               	pop.w	{r8, r9, r10, r11}
               	pop	{r4, r5, r6, r7, pc}
