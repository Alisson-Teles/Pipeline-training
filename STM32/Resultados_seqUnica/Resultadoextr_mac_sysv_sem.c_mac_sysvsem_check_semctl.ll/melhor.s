
/tmp/tmp.qtWYOvFDo1/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ucred:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<semid_kernel:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mac_sysvsem_check_semctl>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	sub	sp, #0x8
               	movw	r8, #0x0
               	movt	r8, #0x0
               	mov	r5, r1
               	ldr.w	r1, [r8]
               	ldr	r3, [r5]
               	mov	r6, r0
               	mov	r4, r2
               	mov	r0, r1
               	mov	r1, r6
               	mov	r2, r5
               	str	r4, [sp]
               	bl	0x3e <mac_sysvsem_check_semctl+0x26> @ imm = #-0x4
               	ldr.w	r0, [r8]
               	movs	r1, #0x0
               	mov	r2, r6
               	mov	r3, r5
               	str	r4, [sp]
               	bl	0x4e <mac_sysvsem_check_semctl+0x36> @ imm = #-0x4
               	movs	r0, #0x0
               	add	sp, #0x8
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
