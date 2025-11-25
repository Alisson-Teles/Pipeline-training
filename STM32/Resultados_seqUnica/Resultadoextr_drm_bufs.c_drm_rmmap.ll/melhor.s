
/tmp/tmp.c8HoZxVFWC/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<drm_local_map:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<drm_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<drm_rmmap>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	mov	r5, r0
               	bl	0x20 <drm_rmmap+0x8>    @ imm = #-0x4
               	mov	r0, r5
               	mov	r1, r4
               	bl	0x28 <drm_rmmap+0x10>   @ imm = #-0x4
               	mov	r4, r0
               	mov	r0, r5
               	bl	0x30 <drm_rmmap+0x18>   @ imm = #-0x4
               	mov	r0, r4
               	pop	{r4, r5, r7, pc}
