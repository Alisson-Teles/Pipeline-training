
/tmp/tmp.9bJ6NSxLWG/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<git_futils_creat_locked_withpath>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r5, r2
               	mov	r2, r3
               	mov	r4, r3
               	mov	r6, r0
               	bl	0x10 <git_futils_creat_locked_withpath+0x10> @ imm = #-0x4
               	cmp.w	r1, #0xffffffff
               	ble	0x2c <git_futils_creat_locked_withpath+0x2c> @ imm = #0x10
               	mov	r0, r6
               	mov	r1, r5
               	mov	r2, r4
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x28 <git_futils_creat_locked_withpath+0x28> @ imm = #-0x4
               	mov.w	r0, #0xffffffff
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
