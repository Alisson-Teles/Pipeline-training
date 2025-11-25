
/tmp/tmp.lOxoVMDUR9/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<file:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<autofs_sb_info:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<autofs_dev_ioctl:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<autofs_dev_ioctl_catatonic>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r0, r1
               	bl	0x2a <autofs_dev_ioctl_catatonic+0x6> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r7, pc}
