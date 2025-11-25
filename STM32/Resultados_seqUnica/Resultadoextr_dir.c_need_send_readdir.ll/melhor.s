
/tmp/tmp.gYJsP9T6FL/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ceph_dir_file_info:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<need_send_readdir>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r4, r0
               	ldr	r0, [r0, #0x8]
               	cbz	r0, 0x48 <need_send_readdir+0x38> @ imm = #0x28
               	mov	r0, r1
               	mov	r6, r1
               	bl	0x22 <need_send_readdir+0x12> @ imm = #-0x4
               	orrs	r0, r1
               	ldm	r4, {r4, r5}
               	mov	r0, r6
               	beq	0x50 <need_send_readdir+0x40> @ imm = #0x20
               	bl	0x2e <need_send_readdir+0x1e> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	mov	r1, r5
               	bl	0x38 <need_send_readdir+0x28> @ imm = #-0x4
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
               	movs	r0, #0x1
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
               	bl	0x50 <need_send_readdir+0x40> @ imm = #-0x4
               	eors	r1, r5
               	eors	r0, r4
               	orrs	r0, r1
               	it	ne
               	movne	r0, #0x1
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
