
/tmp/tmp.wRdqY4ljk4/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<wpi_softc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<wpi_nic_lock>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r11}
               	movw	r8, #0x0
               	movw	r2, #0x0
               	movt	r8, #0x0
               	movt	r2, #0x0
               	ldr.w	r1, [r8]
               	ldr	r2, [r2]
               	mov	r4, r0
               	bl	0x2c <wpi_nic_lock+0x20> @ imm = #-0x4
               	movw	r9, #0x0
               	movw	r5, #0x0
               	mov.w	r6, #0x3e8
               	movt	r9, #0x0
               	movt	r5, #0x0
               	ldr.w	r1, [r8]
               	mov	r0, r4
               	bl	0x4a <wpi_nic_lock+0x3e> @ imm = #-0x4
               	ldr.w	r1, [r9]
               	ldr	r2, [r5]
               	orrs	r2, r1
               	ands	r0, r2
               	cmp	r0, r1
               	beq	0x86 <wpi_nic_lock+0x7a> @ imm = #0x28
               	movs	r0, #0xa
               	bl	0x5e <wpi_nic_lock+0x52> @ imm = #-0x4
               	subs	r6, #0x1
               	bne	0x44 <wpi_nic_lock+0x38> @ imm = #-0x24
               	ldr	r0, [r4]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movs	r2, #0x16
               	bl	0x72 <wpi_nic_lock+0x66> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop.w	{r8, r9, r11}
               	pop	{r4, r5, r6, r7, pc}
               	movs	r0, #0x0
               	pop.w	{r8, r9, r11}
               	pop	{r4, r5, r6, r7, pc}
