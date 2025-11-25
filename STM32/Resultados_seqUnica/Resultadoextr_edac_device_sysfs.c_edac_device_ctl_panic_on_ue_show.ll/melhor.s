
/tmp/tmp.XciZ6yc9v9/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<edac_device_ctl_info:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<edac_device_ctl_panic_on_ue_show>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	mov	r3, r2
               	ldr	r2, [r0]
               	mov	r0, r1
               	movw	r1, #0x0
               	mov.w	r12, #0x3
               	movt	r1, #0x0
               	str.w	r12, [sp]
               	bl	0x28 <edac_device_ctl_panic_on_ue_show+0x1c> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
