
/tmp/tmp.XCNW0JWGyA/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<iwl_trans:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<iwl_set_otp_access_absolute>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldr	r1, [r5]
               	mov	r4, r0
               	bl	0x1c <iwl_set_otp_access_absolute+0x10> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r5]
               	ldr	r2, [r0]
               	mov	r0, r4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x32 <iwl_set_otp_access_absolute+0x26> @ imm = #-0x4
