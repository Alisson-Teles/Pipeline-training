
/tmp/tmp.46m1OLZgdE/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<elink_e3b0_sp_get_pri_cli_reg_nig>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	mov	r2, r1
               	mov.w	r12, #0x4
               	movs	r1, #0x3
               	movs	r3, #0x3
               	str.w	r12, [sp]
               	bl	0x14 <elink_e3b0_sp_get_pri_cli_reg_nig+0x14> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
