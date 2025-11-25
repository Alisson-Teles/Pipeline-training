
/tmp/tmp.BOKOQRWebL/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_4__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<TOOLTIPS_Activate>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	str	r1, [r0, #0x4]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movs	r2, #0xc
               	bl	0x1e <TOOLTIPS_Activate+0x12> @ imm = #-0x4
               	ldr	r1, [r4, #0x4]
               	cbnz	r1, 0x32 <TOOLTIPS_Activate+0x26> @ imm = #0xa
               	ldr	r1, [r4]
               	adds	r1, #0x1
               	beq	0x32 <TOOLTIPS_Activate+0x26> @ imm = #0x4
               	mov	r0, r4
               	bl	0x2e <TOOLTIPS_Activate+0x22> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r4, r6, r7, pc}
