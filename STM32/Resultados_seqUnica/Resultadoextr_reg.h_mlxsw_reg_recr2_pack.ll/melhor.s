
/tmp/tmp.dgbkwxvzjU/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mlxsw_reg_recr2_pack>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r5, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r6, r0
               	mov	r0, r1
               	mov	r1, r6
               	mov	r4, r2
               	bl	0x1c <mlxsw_reg_recr2_pack+0x1c> @ imm = #-0x4
               	mov	r0, r6
               	movs	r1, #0x0
               	mov	r2, r4
               	bl	0x26 <mlxsw_reg_recr2_pack+0x26> @ imm = #-0x4
               	mov	r0, r6
               	movs	r1, #0x1
               	mov	r2, r4
               	bl	0x30 <mlxsw_reg_recr2_pack+0x30> @ imm = #-0x4
               	mov	r0, r6
               	mov	r1, r5
               	mov	r2, r4
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x42 <mlxsw_reg_recr2_pack+0x42> @ imm = #-0x4
